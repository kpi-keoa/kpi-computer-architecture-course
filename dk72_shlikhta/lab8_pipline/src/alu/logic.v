`timescale 1ns/1ps

`include "/home/drcah4ec/lab8_pipeline_mips_core/pipepline_mips/src/alu/defines.v"

`define ALU_AND 3'b000
`define ALU_OR 3'b001
`define ALU_NOR 3'b010
`define ALU_XOR 3'b011
`define ALU_STL 3'b100

module logic(op_a, op_b, log_opsel, result);

input [`REG_WIDTH-1:0] op_a;
input [`REG_WIDTH-1:0] op_b;
input [2:0] log_opsel;

output reg [`REG_WIDTH-1:0] result;

always @* begin
	casez(log_opsel)
		`ALU_AND: result = op_a & op_b;
		`ALU_OR: result = op_a | op_b;
		`ALU_NOR: result = ~(op_a | op_b);
		`ALU_XOR: result = op_a ^ op_b;
		`ALU_STL: result = op_a < op_b;
		default: result = 0;
	endcase


end
endmodule
