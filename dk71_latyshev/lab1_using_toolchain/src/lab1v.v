

`timescale 1ns/1ps


module lab1v(clk, we, data, q, arstn, srstn);

input clk, we, arstn, srstn;
input [31:0] data;
output reg [31:0] q;

always @(posedge clk or negedge arstn) begin 
	if(!arstn) begin 
		q <= 32'h0;
	end else if(!srstn) begin 
		q <= 32'h0;
	end else if(we) begin
		q <= data;
	end else begin 
		q <= q;
	end 
end


endmodule 

/* This code was derived from the Lab_1 of Alexander Lavrusenko*/

