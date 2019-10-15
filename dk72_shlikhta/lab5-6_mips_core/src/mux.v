`timescale 1ns/1ps

`define REG_WIDTH 32

module mux(addr, d_in_0, d_in_1, d_out);

input addr;
input [`REG_WIDTH-1:0] d_in_0, d_in_1;

output reg [`REG_WIDTH-1:0] d_out;

always @* begin
	if(addr) d_out = d_in_1;
	else d_out = d_in_0;
end
endmodule
