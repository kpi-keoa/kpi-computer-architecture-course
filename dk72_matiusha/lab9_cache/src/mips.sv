

`timescale 1ns/1ps




module mips (
	input CLOCK_27,
	input [3:0] KEY,
	output [9:0] LEDR, inout [17:13] SW);


	wire rst_n = KEY[0];
	reg [3:0] clk_div;
	always_ff @(posedge CLOCK_27 or negedge rst_n) begin
		if(~rst_n) begin
			clk_div <= 0;
		end else begin
			clk_div <= clk_div+1;
		end
	end

	wire clk = clk_div[3];

	


//FD BEGIN
	wire stall;
	wire ram_stall;
	wire [31:0] pc_d, pc_q, rf_wdata, rf_rd1, rf_rd2, ext_out, alu_out, ram_rd;
	logic [31:0] alu_b, alu_a;

	register #(32) r_pc(clk, pc_we, pc_d, pc_q, pc_arst);
	assign pc_we = !stall;
	assign pc_arst = rst_n;
	wire [31:0] instr;
	wire [5:0] opcode, funct;
	wire [4:0] rs, rt, rd, shamt, rf_wa;
	wire [1:0] alu_op, alu_sel;
	wire [15:0] imm16;
	wire [25:0] imm26;
	instr_mem #(128) imem(pc_q, instr);

	assign {opcode, rs, rt, rd, shamt, funct} = instr; // opcode fields definition
	assign imm16 = instr[15:0];
	assign imm26 = instr[25:0];
	main_ctrl mc(opcode, ctl_regdst, ctl_regwrite, ctl_alusrc, ctl_memwrite, ctl_memtoreg);
	wire [4:0] regdst = (ctl_regdst) ? rt : rd;


	regfile #(32, 32) register_file(clk, rf_we, rf_arst, rs, rt, rf_wa, rf_wdata, rf_rd1, rf_rd2);
	assign rf_arst = rst_n;

	signext extender(imm16, ext_out);





//FD END
	reg [4:0] ex_rs, ex_rt;
	reg [31:0] ex_rd1, ex_rd2, ex_ext_out;
	reg [25:0] ex_imm26;
	reg [5:0] ex_opcode, ex_funct;
	reg [4:0] ex_regdst;
	reg ex_alusrc, ex_memwrite, ex_memtoreg, ex_regwrite;
	assign ex_arst = rst_n;
	always_ff @(posedge clk or negedge ex_arst) begin
		if(~ex_arst) begin
			{ex_rd1, ex_rd2, ex_imm26, ex_ext_out, ex_opcode, ex_funct, ex_regdst, ex_alusrc, ex_memwrite, ex_memtoreg, ex_regwrite, ex_rs, ex_rt} <= 0;
		end else if(!ram_stall) begin
			ex_rd1 <= rf_rd1;
			ex_rd2 <= rf_rd2;
			ex_ext_out <= ext_out;
			ex_opcode <= (stall)? 6'b0 : opcode; // ror no flags
			ex_funct <= (stall)? 6'b001111: funct;
			ex_regdst <= regdst;
			ex_alusrc <= ctl_alusrc;
			ex_memwrite <= (stall)? 1'b0: ctl_memwrite;
			ex_memtoreg <= (stall)? 1'b0: ctl_memtoreg;
			ex_regwrite <= (stall)? 1'b0: ctl_regwrite;
			ex_imm26 <= imm26;
			ex_rs <= rs;
			ex_rt <= rt;
		end
	end
//EX BEGIN
//2stage, flags directly

	reg [31:0]  wb_aluout, alu_1b;
	reg wb_regwrite, wb_memtoreg;
	reg ma_regwrite, ma_memtoreg, ma_memwrite;
	reg [31:0] ma_aluout, ma_memdata;
	reg [4:0] ma_regdst;
	reg [4:0] wb_regdst;

	reg cfr, zfr, sfr, ofr;

	// assign stall = ((((rs == ex_regdst)&ex_regwrite)|((rs == ma_regdst)&ma_regwrite)|((rs == wb_regdst)&wb_regwrite)) & (opcode[5:4] != 2'b11)) | 
	// 				((((rt == ex_regdst)&ex_regwrite)|((rt == ma_regdst)&ma_regwrite)|((rt == wb_regdst)&wb_regwrite)) & ((!ctl_regdst) | ctl_memtoreg));


	always_comb begin
		if(((ex_rs == ma_regdst)&ma_regwrite)) alu_a = ma_aluout;
		else if(((ex_rs == wb_regdst)&wb_regwrite)) alu_a = rf_wdata;
		else alu_a = ex_rd1;

		if(((ex_rt == ma_regdst)&ma_regwrite)) alu_1b = ma_aluout;
		else if(((ex_rt == wb_regdst)&wb_regwrite)) alu_1b = rf_wdata;
		else alu_1b = ex_rd2;
	end

	assign alu_b = (ex_alusrc) ? ex_ext_out : alu_1b;

	alu #(32) main_alu(alu_a, alu_b, alu_op, alu_sel, alu_out, alu_z, alu_c, alu_s, alu_o, alu_flags_we);
	alu_ctrl ac(ex_opcode, ex_funct, alu_op, alu_sel);
	assign {np_cf, np_sf, np_of, np_zf} = (alu_flags_we & (!ex_opcode[5])) ? {alu_c, alu_s, alu_o, alu_z} : {cfr, sfr, ofr, zfr};
	nextpc next_pc(pc_q, ex_imm26, np_zf, np_cf, np_sf, np_of, ex_opcode[1:0], ex_opcode[3], ex_opcode[4], ex_opcode[5], pc_d);
	always_ff @(posedge clk) begin 
		if(alu_flags_we & (!ex_opcode[5])) begin 
			sfr <= alu_s;
			cfr <= alu_c;
			ofr <= alu_o;	
			zfr <= alu_z;
		end
	end

	//assign LEDR[3:0] = {cfr, sfr, ofr, zfr};

//EX END


	assign ma_arst = rst_n;
	always_ff @(posedge clk or negedge ma_arst) begin
		if(~ma_arst) begin
			{ma_aluout, ma_memdata, ma_regdst, ma_regwrite, ma_memtoreg, ma_memwrite} <= 0;
		end else if(!ram_stall) begin
			ma_aluout <= alu_out;
			ma_memdata <= ex_rd2;
			ma_regdst <= ex_regdst;
			{ma_regwrite, ma_memtoreg, ma_memwrite} <= {ex_regwrite, ex_memtoreg, ex_memwrite};
		end
	end
//MA BEGIN
	wire [31:0] wb_memout, mmio_out;
	wire addr_dec = !ma_aluout[7]; 
	wire gpio_write = (ma_aluout == 32'h80);

	//----------------------clk--we--------------------re-----------addr-------wd----------rd------stall
	cache mem_subsys(clk, addr_dec&ma_memwrite, ma_memtoreg, ma_aluout, ma_memdata, ram_rd, ram_stall);//sync ram!
	gpio gpio1(clk, gpio_write&ma_memwrite, rst_n, ma_memdata, mmio_out, {LEDR[7:5], SW[17:13]});
	assign wb_memout = wb_aluout[7] ? mmio_out : ram_rd;
//MA END
	//


	assign wb_arst = rst_n;
	always_ff @(posedge clk or negedge wb_arst) begin
		if(~wb_arst) begin
			{wb_aluout, wb_regdst, wb_regwrite, wb_memtoreg, wb_regdst} <= 0;
		end else if(!ram_stall) begin
			wb_aluout <= ma_aluout;
			wb_regdst <= ma_regdst;
			{wb_regwrite, wb_memtoreg} <= {ma_regwrite, ma_memtoreg};
		end
	end
//WB BEGIN

	assign rf_wdata = (wb_memtoreg) ? wb_memout : wb_aluout;
	assign rf_wa = wb_regdst;
	assign rf_we = wb_regwrite;

//WB END


	assign stall = ((((rs == ex_regdst)&ex_regwrite) & ex_memtoreg & (|ex_regdst) & (opcode[5:4] != 2'b11)) | 
					(((rt == ex_regdst)&ex_regwrite) & ex_memtoreg & (|ex_regdst) & ((!opcode[0])&(!ctl_memtoreg)))) | ram_stall; 

//alu = r, i , sw not lw





endmodule


module signext(
	input logic [15:0] a,
	output logic [31:0] y);
	assign y = {{16{a[15]}}, a};
endmodule



module nextpc(pc, imm26,zf, cf, sf, of, cond, inv, j, j_en, newpc);
	input [31:0] pc; 
	input [25:0] imm26;
	input logic zf, cf, sf, of;
	input wire [1:0] cond; // b{z,c,m,o}
	input wire inv, j, j_en;
	output wire [31:0] newpc;

	wire [31:0] imm26_se, add_out;

	wire [3:0] flags = {cf, zf, sf, of};
	assign b = ((flags[cond])^inv) & j_en;

	
	assign imm26_se = b ? {{16{imm26[15]}}, imm26[15:0]} : 32'b1;

	assign add_out = pc+imm26_se;

	assign newpc = (j&j_en) ? {pc[31:26], imm26} : add_out;

endmodule


module main_ctrl(
	input wire [5:0] opcode, 
	output logic regdst, regwrite, alusrc, memwrite, memtoreg);
	
	wire rtype, itype;
	assign rtype = ~|opcode;
	assign itype = !opcode[5];

	assign regdst = !rtype;
	assign regwrite = (rtype | itype) & (!memwrite);
	assign alusrc = !rtype;

	assign memwrite = (opcode == 6'b000010); // sw opcode hard coded
	assign memtoreg = (opcode == 6'b000100); // lw



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

module gpio (
	input clk,    // Clock
	input we,
	input rst,
	input [31:0] stin,
	output [31:0] stout,
	inout [7:0] ioport);
	
	
	reg [7:0] ddr, port, pin, ibuffer;
	wire[7:0] ddrw = ddr, portw=port;
	assign stout = {8'b0, ddr, pin, port};

	genvar i;
	generate
		for (i = 0; i < 8; i++) begin : bidir
        	assign ioport[i] = ddrw[i] ? portw[i] : 1'bz;
		end
	endgenerate


	always_ff @(posedge clk or negedge rst) begin
		if(!rst) {ddr, port, pin, ibuffer} <= '0;
		else if (we) begin
			ddr <= stin[16+:8];
			port <= stin[0+:8];
		end else begin 
			pin <= ibuffer;
			ibuffer <= ioport;
		end
		
	end
endmodule


