//code part taken from Vadim Kharchuk
`timescale 1ns/1ps

`define SLL 3'b?00
`define SRL 3'b?01
`define SRA 3'b11?
`define ROL 3'b010
`define ROR 3'b011

module barrel_shifter(key, shift_amount, i_data, result);

input  [2:0] key;
input  [4:0] shift_amount;
input  [31:0] i_data;
output reg [31:0] result;

wire [63:0] data_mod, data_mod2;
wire arithm;	

assign data_mod = {i_data, i_data} << shift_amount;
assign arithm = i_data[31] & key[2];
assign data_mod2 = $signed({arithm, i_data, i_data}) >>> shift_amount;

always @* begin
	casez(key)
		`SLL:	 result = data_mod[31:0];
		`SRL:  result = data_mod2[63:32];
		`SRA:  result = data_mod2[63:32];
		`ROL:  result = data_mod[63:32];
		`ROR:  result = data_mod2[31:0];
	endcase
end

endmodule
