`timescale 1ns/1ps

// some parts of the module has been taken from Kharchuk's and Slihtas mips projects 

module mips #(parameter WIDTH = 32) (
input CLOCK,
input arst_n,

output reg [1:0] LEDR

);


wire [WIDTH-1:0] next_instr;	//To set next instraction
wire [WIDTH-1:0] instr_addr;		//Instruction after PC
wire [WIDTH-1:0] busW;
wire [WIDTH-1:0] busA;
wire [WIDTH-1:0] busB;
wire [WIDTH-1:0] instruction;
wire [WIDTH-1:0] ext_out;
wire [WIDTH-1:0] alu_operand;
wire [WIDTH-1:0] alu_result;
wire [WIDTH-1:0] mem_data_out;
wire [WIDTH-1:0] next_instr_norm;
wire [WIDTH-1:0] next_instr_jump;

wire [25:0] imm26;
wire [15:0] imm16;
wire [4:0] rs, rt, rd;
wire [4:0] reg_write_addr;
wire [4:0] alu_op;
wire [4:0] shamt;

assign rs = instruction[25:21];
assign rt = instruction[20:16];
assign rd = instruction[15:11];
assign shamt = instruction[10:6];
//Control signals
wire RegDst;
wire RegWr;
wire ExtOp;
wire ALUSrc;
wire MemWrite;
wire MemtoReg;
wire PCSrs;
wire j, bne, beq;

//Flags
wire ov_flag, cf_flag, zero_flag;

assign imm16 = instruction[15:0];
assign imm26 = instruction[25:0];

program_counter  pc(
	next_instr,
	instr_addr,
  	CLOCK, arst_n
);	
increment  inc(
	instr_addr,
	next_instr_norm
); 
inst_memory  instr_mem (
	instr_addr,
	instruction
);
bus_mux a_mux(
RegDst,
	rt,
	rd,
	reg_write_addr
);
	registerFile RF(
	rs,
	rt, 
	reg_write_addr, 
	busW, 
	RegWr, 
	CLOCK, 
	arst_n, 
	busA, 
	busB
);
extender ext(
	imm16, 
	ExtOp, 
	ext_out
);
bus_mux mux_ALU(
	ALUSrc, 
	ext_out, 
	busB, 
	alu_operand
);
ALU ALU_1(
	busA, 
	alu_operand, 
	alu_op,
	alu_result, 
	ov_flag,
	zero_flag,
	shamt
);
data_memory data_mem_0(
	busB, 
	mem_data_out,
	alu_result[4:0], 
	MemWrite, 
	CLOCK
); 
bus_mux MemToReg(
	MemtoReg, 
	mem_data_out, 
	alu_result, 
	busW
);
bus_mux NextInstr(
	PCSrs, 
	next_instr_jump, 
	next_instr_norm, 
	next_instr
);
next_pc next_pc_0(
	PCSrs,
	next_instr_norm, 
	zero_flag, 
	j, 
	bne, 
	beq, 
	next_instr_jump, 
	imm26
);
alu_ctrl alu_ctrl_0(
	instruction[31:26], 
	instruction[5:0], 
	alu_op
);
control_unit ctrl_0(
	instruction[31:26], 
	beq, 
	bne, 
	j, 
	MemWrite, 
	MemtoReg,
	RegDst,
	RegWr,
	ExtOp,  
	ALUSrc
);
always @* begin
	LEDR[0] = ov_flag;
	LEDR[1] = zero_flag;
end
endmodule

