

`timescale 1ns/1ps




module mips (
	input CLOCK_27,
	input [3:0] KEY,
	output [3:0] LEDR,
	inout [31:0] ioport
);
	
wire inta, intb, intc, into;
assign LEDR = {inta, intb, intc, into};	
	
		wire rst_n = KEY[0];
//	reg [3:0] clk_psc;
//	always_ff @(posedge CLOCK_27 or negedge rst_n) begin
//		if(!rst_n) clk_psc<='0;
//		else clk_psc <= clk_psc+1;
//	end
	wire clk = CLOCK_27; // ca 1.5 mhz sysfreq
	




	//declare main connections
	wire [31:0] pc_out, pc_in, instr, ra, rb, alu_b, aluout, ext_out, dmem_out, mmio_out, ram_out, regw_data, pcmux_jump, pcmux_next,r31;
	wire [4:0] rs, rt, rd, w_reg, shamt;
	wire [15:0] imm16;
	wire [25:0] jmp_imm;
	wire [5:0] opcode, funct;
	wire [1:0] alu_sel, alu_instr, jmp_cond;
	wire pcsrc, regdst, reg_write, alusrc, mem_write, memtoreg, zfi, cfi, sfi, ofi, b_inv, j, j_en, call, ret;

	reg cfr, zfr, sfr, ofr;
	//Output register connected to LED, memory mapped to addr 0x80


	register #(32) pc(clk, 1'b1, pcmux_jump, pc_out, rst_n);



	assign pcmux_next = pc_out+1; // sorry for 2 summators

	instr_mem #(32) imem(pc_out, instr);

	//using shamt field for dedicated shift is stupid, it's for shift AFTER alu operation. w/ be implemented in pipelined mips
	assign {opcode, rs, rt, rd, shamt, funct} = instr; // opcode fields definition
	assign imm16 = instr[15:0];
	assign jmp_imm = instr[25:0];

	assign w_reg = call?5'h1f:(regdst)?rt:rd;

	regfile #(32, 32) register_file(clk, reg_write|call, rst_n, rs, rt, w_reg, regw_data, ra, rb,r31);

	signext extender(imm16, ext_out);

	assign alu_b = (alusrc)? ext_out:rb;

	alu #(32) main_alu(ra, alu_b, alu_instr, alu_sel, aluout, zfi, cfi, sfi, ofi);

	// for memory mapped IO, hardcoded to provide mmio functionality to be synth'ed by quartus


	memory #(32) ram(clk, mem_write, aluout, rb, ram_out, rst_n, ioport, inta, intb, intc, into);


	assign regw_data = call?pcmux_next:memtoreg?dmem_out:aluout;

	next_pc pc_ctrl(pcmux_next, r31, jmp_imm, zfr, cfr, sfr, ofr, jmp_cond, b_inv, j, j_en, call, ret, pcsrc, pcmux_jump);


	

	main_ctrl mc(opcode, regdst, reg_write, alusrc, j, b_inv, j_en, mem_write, memtoreg, call, ret, jmp_cond);

	alu_ctrl ac(opcode, funct, alu_instr, alu_sel);

	

	//some flags registrs
	always_ff @(posedge clk) begin 
		sfr <= sfi;
		zfr <= zfi;
		cfr <= cfi;
		ofr <= ofi;
	end


endmodule


module signext(
	input logic [15:0] a,
	output logic [31:0] y);
	assign y = {{16{a[15]}}, a};
endmodule


module mux2 #(parameter WIDTH = 8) (
	input logic [WIDTH-1:0] d0, d1,
	input logic s,
	output logic [WIDTH-1:0] y);
	assign y = s ? d1 : d0;
endmodule


//width hard coded due to instruction set unscalability
module next_pc( 
	input logic [31:0] nextpc, r31,
	input logic [25:0] imm26,
	input logic zf, cf, sf, of,
	input wire [1:0] cond, // b{z,c,m,o}
	input wire inv, j, j_en, call, ret,
	output wire pcsrc,
	output wire [31:0] newpc
	);

	wire [15:0] imm16;
	wire [31:0] b_addr, j_addr, b_disp;
	wire cof, ccf, csf, czf;

	assign imm16 = imm26[0+:16];

	signext se(imm16, b_disp);

	assign b_addr = nextpc + b_disp; //if there were only relative branches i'd use 1 adder for pc manipulation
	assign j_addr = {nextpc[31:26], imm26};


	assign newpc = (ret)? r31 : (j&j_en)? j_addr : (pcsrc)? b_addr : nextpc;//here callret logic

	assign cof = (of ^ inv) & !cond[0] & !cond[1];
	assign csf = (sf ^ inv) & cond[0] & !cond[1];
	assign czf = (zf ^ inv) & !cond[0] & cond[1];
	assign ccf = (cf ^ inv) & cond[0] & cond[1];

	assign pcsrc = (cof | ccf | csf | czf) & j_en;
endmodule




module main_ctrl(
	input wire [5:0] opcode, 
	output logic regdst, regwrite, alusrc, j, j_inv, j_en, memwrite, memtoreg, call, ret,
	output logic [1:0] cond);
	
	wire rtype, itype;
	assign rtype = ~|opcode;
	assign itype = !opcode[5];
	assign j = (opcode[4]);
	assign call = (opcode == 6'b111000);
	assign ret = (opcode == 6'b111111);
	assign regdst = !rtype;
	assign regwrite = (rtype | itype) & (!memwrite);
	assign alusrc = !rtype;

	assign j_en = opcode[5];
	assign j_inv = opcode[3];
	assign memwrite = (opcode == 6'b000010); // sw opcode hard coded
	assign memtoreg = (opcode == 6'b000100); // lw
	assign cond = opcode[1:0];

endmodule
//jcc = 10?0??
//j   = 110000
//call= 111000
//ret = 111111




module alu_ctrl(
	input wire [5:0] opcode, funct, 
	output logic [1:0] instr, alusel);

	always_comb begin
		{alusel, instr} = 0;
		if(~|opcode) begin
			{alusel, instr} = funct[3:0];
		end else if(!opcode[5]) begin 
			if(opcode[0]) begin
				{alusel, instr} = opcode[4:1];
			end 
		end
	end
endmodule




