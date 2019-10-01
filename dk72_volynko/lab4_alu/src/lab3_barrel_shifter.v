`timescale 1ns/1ps

`define BS_SLL 3'b?00
`define BS_SRL 3'b010
`define BS_ROL 3'b?01
`define BS_ROR 3'b011
`define BS_SRA 3'b11?

module lab3_barrel_shifter(bs_opsel, shift_amount, data_in, result);

input  [2:0]  bs_opsel;
input  [4:0]  shift_amount;
input  [31:0] data_in;
output reg [31:0] result;

reg  [31:0] out;
reg  [31:0] out_end;
wire [63:0] data_mod1, data_mod2;
wire arithm;
 
assign arithm = data_in[31] & bs_opsel[2];
assign data_mod1 = {data_in, data_in} << shift_amount;
assign data_mod2 = $signed({arithm, data_in, data_in}) >>> shift_amount;


always @* begin
  casez (bs_opsel)
		`BS_SLL : result = data_mod1[31:0];
		`BS_SRL : result = data_mod2[63:32];
		`BS_ROL : result = data_mod1[63:32];
		`BS_ROR : result = data_mod2[31:0];
		`BS_SRA : result = data_mod2[63:32];
		default:  result = {32{1'bz}}; 
  endcase
end

endmodule

