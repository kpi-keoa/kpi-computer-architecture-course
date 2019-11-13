
`timescale 1ns/1ps
module extender_next_pc(imm16, d_out);

input [15:0] imm16;

output reg [31:0] d_out;

wire [15:0] imm15_up;



assign imm15_up = {16{1'b0}};

always @* begin
	d_out = {imm15_up, imm16};
	end
endmodule
