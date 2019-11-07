`timescale 1ns/1ps

module prog_counter #(parameter WIDTH = 1)(d_in, d_out, clk, arst_n, en);

input [WIDTH-1:0] d_in;
input clk, arst_n;
input en;

output reg [WIDTH-1:0] d_out;

always @(posedge clk or negedge arst_n) begin
	if(!arst_n) d_out <= 0;
	else if(en)
		d_out <= d_in;
	else
		d_out <= d_out;
end
endmodule
