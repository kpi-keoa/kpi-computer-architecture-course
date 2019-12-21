`timescale 1ns/1ps
				 
module lab3_barrel_shifter #(parameter WIDTH = 32) (bs_opsel, shift_amount, in_data, o_result);

	input wire [2:0] bs_opsel;
	input wire [4:0] shift_amount;
	input wire [31:0] in_data;
	output reg [31:0] o_result;

	logic [WIDTH*2-1:0] lshift;
	logic [WIDTH*2-1:0]rshift;
	logic  sign;
	assign sign = in_data[31] & bs_opsel[2];
	assign lshift = {in_data,in_data} << shift_amount;
	assign rshift = $signed({sign,in_data,in_data})  >>> shift_amount;
	always_comb 
		casez (bs_opsel)
		3'b?00 : o_result = lshift[WIDTH-1:0]; // SLL
		3'b010 : o_result = rshift[WIDTH*2-1:WIDTH]; //SRL
		3'b?01 : o_result = lshift[WIDTH*2-1:WIDTH]; //ROL
		3'b011 : o_result = rshift[WIDTH-1:0]; //ROR
		3'b11? : o_result = rshift[WIDTH*2-1:WIDTH];//SRA
		default: o_result = {WIDTH{1'bz}};			
		endcase
	endmodule
							 
						 

				
				
				
				
