`timescale 1ns / 1ps

module alu (
	input [31:0] i_a,
	input [31:0] i_b,
	input [2:0] i_opt,
	input [1:0] i_alufunc, 
	output [31:0] o_result,
	output reg o_zero, 
	output o_ovfl);

wire [31:0] o_mul;
wire [31:0] o_log;
wire [31:0] o_shift;
wire [31:0] o_addsub;
reg [31:0] alu_result;

assign o_result = alu_result;

addsub ads(.i_a(i_a), .i_b(i_b), .i_opt(i_opt[1:0]), .result(o_addsub), .ovfl(o_ovfl));

barrel_shifter bs(.data_in(i_a), .shift_amount(i_b[4:0]), .bs_opsel(i_opt[2:0]), .result(o_shift)); 

logic1 log(.i_a(i_a), .i_b(i_b), .i_opt(i_opt[1:0]), .result(o_log));

mul_div md(.i_a(i_a), .i_b(i_b), .i_opt(i_opt[1:0]), 	.o_result(o_mul));

	always @* begin
		case(i_alufunc)

			2'b00: alu_result = o_log;
			2'b10: alu_result = o_shift;
			2'b01: alu_result = o_mul;			
			2'b11: alu_result = o_addsub;

		endcase
		o_zero = ~| alu_result;
	end
endmodule
