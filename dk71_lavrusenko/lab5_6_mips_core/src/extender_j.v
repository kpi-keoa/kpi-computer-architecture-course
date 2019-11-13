//code part take fro Aleksandr Shlihta
`timescale 1ns/1ps
module extender_j(imm26, d_out);

input [25:0] imm26;

output reg [31:0] d_out;

wire [5:0] imm6_up;



assign imm6_up = {6{1'b0}};

always @* begin
	d_out = {imm6_up, imm26};
	end
endmodule
