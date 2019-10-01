`timescale 1ns/1ps

`define SLL 3'b?00
`define SRL 3'b?01
`define ROL 3'b010
`define ROR 3'b011
`define SRA 3'b11?
module alu #(parameter WIDTH = 32)(
input [WIDTH-1:0] in_a,in_b,
input [1:0] in_func, 
input [2:0]in_opt,
output [WIDTH-1:0] out_result,
output reg out_zero, 
output out_ovrfl);

wire [WIDTH-1:0] mulout, logout, shiftout, addsubout;
reg [WIDTH-1:0] alu_result;
assign out_result = alu_result;

add_sub #(WIDTH) as(.in_A(in_a), .in_B(in_b), .in_opt(in_opt[0]), 
							.out(addsubout), .ovrfl(out_ovrfl));
barrel_shifter #(WIDTH) bs(.data_in(in_a), .shift_amount(in_b[4:0]), 
							.bs_opsel(in_opt[2:0]), .result(shiftout)); //data in -> b using like shift amount
logic_op #(WIDTH)  log(.in_A(in_a), .in_B(in_b), 
							.in_opt(in_opt[1:0]), .out(logout));
mul_div #(WIDTH) md(.in_A(in_a), .in_B(in_b), .in_opt(in_opt[1:0]), 
							.out(mulout));

	always @(*) begin
		case(in_func)
			2'b00: alu_result = mulout;
			2'b01: alu_result = logout;
			2'b10: alu_result = shiftout;
			2'b11: alu_result = addsubout;
			default: alu_result = {WIDTH{1'bz}};
		endcase
		out_zero = ~| alu_result;
	end
endmodule

