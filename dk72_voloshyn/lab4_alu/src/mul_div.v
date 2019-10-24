`timescale 1ns / 1ps

module mul_div(
	input [31:0] i_a,
	input [31:0] i_b,
	input[1:0] i_opt,
	output reg [32:0] o_result);

wire [63:0] mul;
wire [31:0] div;
wire [31:0] result;

assign mul = i_a * i_b;
assign div = i_a / i_b;
assign result = i_a % i_b;

always @* begin
	casez(i_opt)

		2'b00: o_result = mul[31:0];
		2'b10: o_result = mul[63:32];
		2'b01: o_result = div;
		2'b11: o_result = result;
		
	endcase
end
endmodule

