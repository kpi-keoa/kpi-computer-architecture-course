`timescale 1ns/1ps
module reg32(clk, we, d, q, arst, rst);
input clk,we,arst, rst;
input [31:0] d;
output reg [31:0] q;

always @(posedge clk or negedge arst) begin 
	if(!arst) begin 
		q <= 32'b0;
	end else if(!rst) begin 
		q <= 32'b0;
	end else if(we) begin
		q <= d;
	end else begin 
		q <= q;
	end 
end
endmodule 