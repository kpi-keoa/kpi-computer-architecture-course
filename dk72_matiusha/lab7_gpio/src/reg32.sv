`timescale 1ns/1ps

module register #(parameter WIDTH = 32) (clk, we, d, q, arst);
	input clk,we,arst;
	input [WIDTH-1:0] d;
	output reg [WIDTH-1:0] q;

	

	always @(posedge clk or negedge arst) begin 
		if(!arst) begin 
			q <= '0;
		end else if(we) begin
			q <= d;
		end else begin 
			q <= q;
		end 
	end

endmodule 