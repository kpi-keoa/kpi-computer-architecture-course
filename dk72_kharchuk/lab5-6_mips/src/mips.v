`timescale 1ns/1ps

module mips #(parameter WIDTH = 32) (
input CLOCK,
input arst_n,

output reg [2:0] LEDR,
output [6:0] instr

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

assign rs = instruction[25:21];
assign rt = instruction[20:16];
assign rd = instruction[15:11];

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




program_counter  pc(next_instr, instr_addr, CLOCK, arst_n);	
increment  inc(instr_addr, next_instr_norm);          //ПЕРЕВІРИТИ 
instruction_memory  instr_mem (instr_addr, instruction);
addr_mux a_mux(RegDst, rt, rd, reg_write_addr);
registerFile RF(rs, rt, reg_write_addr, busW, RegWr, CLOCK, busA, busB);

extender ext(imm16, ExtOp, ext_out);
mux mux_ALU(ALUSrc, busB, ext_out, alu_operand);
alu ALU_1(busA, alu_operand, alu_op, ov_flag, cf_flag, zero_flag, alu_result);
data_memory data_mem_0(busB, mem_data_out, alu_result[6:0], MemWrite, CLOCK);
mux mux_MemToReg(MemtoReg, alu_result, mem_data_out, busW);
mux mux_NextInstr(PCSrs, next_instr_norm, next_instr_jump, next_instr);

next_pc next_pc_0(next_instr_norm, imm26, zero_flag, j, bne, beq, PCSrs, next_instr_jump);
alu_control alu_ctrl_0(instruction[31:26], instruction[5:0], alu_op);
control ctrl_0(instruction[31:26], RegDst, RegWr, ExtOp, ALUSrc, MemWrite,
								 MemtoReg, beq, bne, j);

assign instr = instr_addr[6:0];

always @* begin
	LEDR[0] = ov_flag;
	LEDR[1] = cf_flag;
	LEDR[2] = zero_flag;
end
endmodule
