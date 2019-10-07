`timescale 1ns/1ps

`define WIDTH 5


module addr_mux(addr, d_in_0, d_in_1, d_out);


input addr;
input [`WIDTH-1:0] d_in_0, d_in_1;

output reg [`WIDTH-1:0] d_out;

always @* begin
	if(addr) d_out = d_in_1;
	else d_out = d_in_0;
end
endmodule