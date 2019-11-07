`timescale 1ns/1ps

module extender #(parameter WIDTH = 1)(imm16, ext_op, d_out);

input [(WIDTH/2)-1:0] imm16;
input ext_op;

output reg [WIDTH-1:0] d_out;

wire [(WIDTH/2)-1:0] imm16_up;
wire temp;

assign temp = imm16[15] & ext_op;
assign imm16_up = {16{temp}};

always @* begin
	d_out = {imm16_up, imm16};
end
endmodule
