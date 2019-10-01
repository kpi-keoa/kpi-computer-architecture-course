`timescale 1ns/1ps
`include "/home/drcah4ec/lab4_alu/defines.v"

`define AND 2'b00
`define OR 2'b01
`define NOR 2'b10
`define XOR 2'b11

module logic(op_a, op_b, log_func, logic_result);

input [`REG_WIDTH-1:0] op_a;
input [`REG_WIDTH-1:0] op_b;
input [1:0] log_func;

output reg [`REG_WIDTH-1:0] logic_result;

always @* begin
	casez(log_func)
		`AND: logic_result = op_a & op_b;
		`OR: logic_result = op_a | op_b;
		`NOR: logic_result = ~(op_a | op_b);
		`XOR: logic_result = op_a ^ op_b;
	endcase


end
endmodule
