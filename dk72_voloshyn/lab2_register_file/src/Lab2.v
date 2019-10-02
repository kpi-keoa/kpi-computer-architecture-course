`timescale 1ns/1ps

module RegFile_Lab2(we, clk, arstn, in_write, addreader_a, addreader_b, data_in, out_a, out_b);

integer i;

input wire we;
input wire clk;
input wire arstn;
input wire [4:0]addreader_a;
input wire [4:0]addreader_b;
input wire [4:0]in_write;
input wire [31:0]data_in;

output reg [31:0]out_a;
output reg [31:0]out_b;

reg[31:0] rf[31:0]; // taken from Kharchuk Vadim, student of DK-72



always @(posedge clk or negedge arstn) begin
	if(!arstn) 
		begin
		for(i = 0; i < 32; i = i + 1)	
		rf[i] <= 2'b00;
		end
		
		else if (we)
			rf[in_write] <= data_in;
			out_a <= rf[addreader_a];
			out_b <= rf[addreader_b];
		end
		
endmodule


