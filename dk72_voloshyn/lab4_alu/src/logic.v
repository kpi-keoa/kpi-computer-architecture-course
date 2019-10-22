`timescale 1ns / 1ps

module logic1(
	input [31:0] i_a,
	input [31:0] i_b,
	input i_opt, 
	output reg [31:0] result);

always @(*) begin
	casez(i_opt)	
	
		2'b00: result = ~(i_a | i_b);
		2'b01: result = i_a & i_b;
		2'b10: result = i_a | i_b;
		2'b11: result = i_a ^ i_b;

	endcase
end
endmodule
