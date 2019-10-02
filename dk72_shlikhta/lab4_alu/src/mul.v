`timescale 1ns/1ps
`include "/home/drcah4ec/lab4_alu/defines.v"

module mul(op_a, op_b, result_h, result_l);

input signed [`REG_WIDTH-1:0] op_a;
input signed [`REG_WIDTH-1:0] op_b;

output reg signed [`REG_WIDTH-1:0] result_h;
output reg signed [`REG_WIDTH-1:0] result_l;

wire signed [`REG_WIDTH*2-1:0] result;

assign result = op_a * op_b;

always @* begin
	
	result_h = result[`REG_WIDTH*2-1:`REG_WIDTH];
	result_l = result[`REG_WIDTH-1:0];

end
endmodule
