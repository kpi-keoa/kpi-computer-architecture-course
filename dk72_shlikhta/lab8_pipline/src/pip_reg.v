`timescale 1ns/1ps

module pip_reg #(parameter WIDTH = 1)(d_i, d_o, clk, we, srst_n, arst_n);

input [WIDTH-1:0] d_i;
input clk, we, srst_n, arst_n;

output reg [WIDTH-1:0] d_o;

always @(posedge clk or negedge arst_n) begin
	if(!arst_n)  d_o <= 0;		
	else if(we) begin
		if(!srst_n) d_o <= 0;
		else d_o <= d_i;
	end 
	else d_o <= d_o;
end

endmodule