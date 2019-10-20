`timescale 1ns/1ps
// Perepusatu pid  odun MUX

module addr_mux #(parameter WIDTH = 5) (
input addr, 
input [WIDTH-1:0] d_in_rt, 
input [WIDTH-1:0] d_in_rd,
output reg [WIDTH-1:0] d_out
);

always @* begin
	if(addr) d_out = d_in_rd;
	else d_out = d_in_rt;
end
endmodule
