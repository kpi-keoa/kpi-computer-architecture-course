// code part take from aleksander shlihta because my regiser (from lab2)do not synthesized
`define WIDTH 32
`timescale 1ns/1ps
module pc(d_in, d_out, clk, arst_n);

input [`WIDTH-1:0] d_in;
input clk, arst_n;

output reg [`WIDTH-1:0] d_out;

always @(posedge clk or negedge arst_n) begin
	if(!arst_n) d_out = 0;
	else d_out = d_in;
end

endmodule
