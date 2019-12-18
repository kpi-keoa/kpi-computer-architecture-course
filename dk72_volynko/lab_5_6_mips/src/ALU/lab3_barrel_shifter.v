`timescale 1ns/1ps

`define BS_SLL 3'b?00
`define BS_SRL 3'b010
`define BS_ROL 3'b?01
`define BS_ROR 3'b011
`define BS_SRA 3'b11?

module lab3_barrel_shifter #(parameter WIDTH = 32)(bs_opsel, shift_amount, data_in, result);

input  [2:0]  bs_opsel;
input  [4:0]  shift_amount;
input  [WIDTH-1:0] data_in;
output reg [WIDTH-1:0] result;

reg  [WIDTH-1:0] out;
reg  [WIDTH-1:0] out_end;
wire [WIDTH*2-1:0] data_mod1, data_mod2;
wire arithm;
 
assign arithm = data_in[32] & bs_opsel[2];
assign data_mod1 = {data_in, data_in} << shift_amount;
assign data_mod2 = $signed({arithm, data_in, data_in}) >>> shift_amount;


always @* begin
  casez (bs_opsel)
		`BS_SLL : result = data_mod1[WIDTH-1:0];
		`BS_SRL : result = data_mod2[WIDTH*2-1:WIDTH];
		`BS_ROL : result = data_mod1[WIDTH*2-1:WIDTH];
		`BS_ROR : result = data_mod2[WIDTH-1:0];
		`BS_SRA : result = data_mod2[WIDTH*2-1:WIDTH];
		default:  result = {WIDTH{1'bz}}; 
  endcase
end

endmodule
