//Code take from Vadim Kharchuk

`timescale 1ns/1ps

module logic #(parameter WIDTH = 32) (

input [WIDTH-1:0] in_A, in_B,
input [1:0] in_opt, 
output reg [WIDTH-1:0] out);

	always @(*) begin
		casez(in_opt)
		2'b00: out = in_A & in_B;
		2'b01: out = in_A | in_B;
		2'b10: out = ~(in_A | in_B);
		2'b11: out = in_A ^ in_B;
		endcase
	end
	
endmodule
