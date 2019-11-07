`timescale 1ns/1ps

module by_mux #(parameter WIDTH = 1)(d_in_0, d_in_1, d_in_2, d_out, addr);

input [WIDTH-1:0] d_in_0;
input [WIDTH-1:0] d_in_1;
input [WIDTH-1:0] d_in_2;
input [1:0] addr;

output reg [31:0] d_out;

always @* begin
	casez(addr)
		0: d_out <= d_in_0;
		1: d_out <= d_in_1;
		2: d_out <= d_in_2;
		default d_out <= 0;
	endcase
end



endmodule
