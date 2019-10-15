`timescale 1ns/1ps

`define REG_WIDTH 32

module incrementer(d_in, d_out);

input [`REG_WIDTH-1:0] d_in;

output reg [`REG_WIDTH-1:0] d_out;

integer i;

always @* begin
	d_out <= d_in + 1;
end
endmodule

