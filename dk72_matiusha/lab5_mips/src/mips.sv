

`timescale 1ns/1ps




module mips (
	input CLOCK_27,
	input [3:0] KEY,
	output [9:0] LEDR);

	wire clk = CLOCK_27;
	wire rst_n = KEY[0];



	//declare main connections
	wire [31:0] pc_out, pc_in, instr, ra, rb, alu_b, aluout, ext_out, dmem_out, regw_data, pcmux_jump, pcmux_next;
	wire [4:0] rs, rt, rd, w_reg, shamt;
	wire [15:0] imm16;
	wire [25:0] jmp_imm;
	wire [5:0] opcode, funct;
	wire [1:0] alu_sel, alu_instr, jmp_cond;
	wire pcsrc, regdst, reg_write, alusrc, mem_write, memtoreg, zfi, cfi, sfi, ofi, b_inv, j, j_en;

	reg cfr, zfr, sfr, ofr;
	//Output register connected to LED, memory mapped to addr 0x80
	reg [31:0] mmio [0:0];


	register #(32) pc(clk, 1'b1, pc_in, pc_out, rst_n);

	mux2 #(32) pcsrcmux(pcmux_next, pcmux_jump, pcsrc, pc_in); 

	assign pcmux_next = pc_out+1; // sorry for 2 summators

	instr_mem #(128) imem(pc_out, instr);

	//using shamt field for dedicated shift is stupid, it's for shift AFTER alu operation. w/ be implemented in pipelined mips
	assign {opcode, rs, rt, rd, shamt, funct} = instr; // opcode fields definition
	assign imm16 = instr[15:0];
	assign jmp_imm = instr[25:0];

	mux2 #(5) ch_w_reg(rd, rt, regdst, w_reg); // choose destination register

	regfile #(32, 32) register_file(clk, reg_write, rst_n, rs, rt, w_reg, regw_data, ra, rb);

	signext extender(imm16, ext_out);

	mux2 #(32) alu_b_src(rb, ext_out, alusrc, alu_b); // source operand for alu choosing

	alu #(32) main_alu(ra, alu_b, alu_instr, alu_sel, aluout, zfi, cfi, sfi, ofi);

	// for memory mapped IO, hardcoded to provide mmio functionality to be synth'ed by quartus
	wire addr_dec = !aluout[7] & mem_write; 

	data_mem #(128) ram(clk, addr_dec, aluout, rb, dmem_out);

	mux2 #(32) ch_writeback(aluout, dmem_out, memtoreg, regw_data); // choose writeback value

	next_pc pc_ctrl(pcmux_next, jmp_imm, zfr, cfr, sfr, ofr, jmp_cond, b_inv, j, j_en, pcsrc, pcmux_jump);


	

	main_ctrl mc(opcode, regdst, reg_write, alusrc, j, b_inv, j_en, mem_write, memtoreg, jmp_cond);

	alu_ctrl ac(opcode, funct, alu_instr, alu_sel);
	
	assign LEDR[7:0] = mmio[0][7:0];

	//some flags registrs
	always_ff @(posedge clk) begin 
		sfr <= sfi;
		zfr <= zfi;
		cfr <= cfi;
		ofr <= ofi;
		if(!addr_dec) begin 
			mmio[aluout[6:0]] <= rb; 
		end
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
	input logic [31:0] nextpc, 
	input logic [25:0] imm26,
	input logic zf, cf, sf, of,
	input wire [1:0] cond, // b{z,c,m,o}
	input wire inv, j, j_en,
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

	mux2 #(32) pcmux(b_addr, j_addr, j, newpc); //same logic as in presentation

	assign cof = (of ^ inv) & !cond[0] & !cond[1];
	assign csf = (sf ^ inv) & cond[0] & !cond[1];
	assign czf = (zf ^ inv) & !cond[0] & cond[1];
	assign ccf = (cf ^ inv) & cond[0] & cond[1];

	assign pcsrc = (j | cof | ccf | csf | czf) & j_en;
endmodule




module main_ctrl(
	input wire [5:0] opcode, 
	output logic regdst, regwrite, alusrc, j, j_inv, j_en, memwrite, memtoreg,
	output logic [1:0] cond);
	
	wire rtype, itype;
	assign rtype = ~|opcode;
	assign itype = !opcode[5];
	assign j = (opcode[4]);

	assign regdst = !rtype;
	assign regwrite = (rtype | itype) & (!memwrite);
	assign alusrc = !rtype;

	assign j_en = opcode[5];
	assign j_inv = opcode[3];
	assign memwrite = (opcode == 6'b000010); // sw opcode hard coded
	assign memtoreg = (opcode == 6'b000100); // lw
	assign cond = opcode[1:0];

endmodule

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



