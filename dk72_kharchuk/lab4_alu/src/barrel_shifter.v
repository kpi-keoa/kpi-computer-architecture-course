`timescale 1ns/1ps
`define SLL 3'b?00
`define SRL 3'b?01
`define ROL 3'b010
`define ROR 3'b011
`define SRA 3'b11?

module barrel_shifter #(parameter WIDTH = 32) (
input  [WIDTH-1:0] data_in,
input  [2:0]  bs_opsel,
input  [4:0]  shift_amount,
output reg[31:0] result);

wire [63:0] data_mod, data_mod2;
wire arithm, is_arithm_shift;	

assign data_mod = {data_in, data_in} << shift_amount;

assign is_arithm_shift = bs_opsel[2];												   
assign arithm = data_in[31] & is_arithm_shift;										
assign data_mod2 = $signed({arithm, data_in, data_in}) >>> shift_amount;	


always @* begin

	casez(bs_opsel)
		`SRL:  result = data_mod2[63:32];
		`SLL:	 result = data_mod[31:0];
		`ROL:  result = data_mod[63:32];
		`ROR:  result = data_mod2[31:0];
		`SRA:  result = data_mod2[63:32];
	default: result = {WIDTH{1'bz}};
	endcase
end

endmodule

