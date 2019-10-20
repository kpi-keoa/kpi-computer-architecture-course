`timescale 1ns/1ps

`define REG_WIDTH 32

module prog_counter(d_in, d_out, clk, arst_n);

input [`REG_WIDTH-1:0] d_in;
input clk, arst_n;

output reg [`REG_WIDTH-1:0] d_out;

always @(posedge clk or negedge arst_n) begin
	if(!arst_n) d_out = 0;
	else d_out = d_in;
end
endmodule
