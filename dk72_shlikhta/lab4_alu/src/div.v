`timescale 1ns/1ps
`include "/home/drcah4ec/lab4_alu/defines.v"

module div(op_a, op_b, result_div, result_rem);

input signed [`REG_WIDTH-1:0] op_a;
input signed [`REG_WIDTH-1:0] op_b;

output reg signed [`REG_WIDTH-1:0] result_div;
output reg [`REG_WIDTH-1:0] result_rem;

always @* begin
	result_div = op_a / op_b;
	result_rem = op_a % op_b;
end
endmodule
