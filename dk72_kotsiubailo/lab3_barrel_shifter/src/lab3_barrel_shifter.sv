`timescale 1ns/1ps
				 
module lab3_barrel_shifter
	#(parameter WIDTH = 32)

(input logic [2:0] bs_opsel,
input logic [4:0] shift_amount,
input logic [31:0] in_data,
output logic [31:0] o_result);
							
	logic data [WIDTH*2-1:0];
	logic signed[WIDTH*2-1:0] left;
	logic signed [WIDTH*2-1:0]right;
	logic  choice;
	assign choice = in_data[31] & bs_opsel[2];
	assign left = {in_data,in_data} << shift_amount;
	assign right = {choice,in_data,in_data}  >>> shift_amount;
	always_comb 
		casez (bs_opsel)
		3'b?00 : o_result = left[WIDTH-1:0]; // SLL
		3'b010 : o_result = right[WIDTH*2-1:WIDTH]; //SRL
		3'b?01 : o_result = left[WIDTH*2-1:WIDTH]; //ROL
		3'b011 : o_result = right[WIDTH-1:0]; //ROR
		3'b11? : o_result = right[WIDTH*2-1:WIDTH];//SRA
		default: o_result = 32'bx;			
		endcase
	endmodule
							 
						 

				
				
				
				
