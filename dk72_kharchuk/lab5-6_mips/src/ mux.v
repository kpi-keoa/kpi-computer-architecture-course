`timescale 1ns/1ps

module mux #(parameter WIDTH = 32) (
input addr, 
input [WIDTH-1:0] In0, 
input [WIDTH-1:0] In1,
output reg [WIDTH-1:0] Out_dat);


always @* begin
	if(addr) Out_dat = In1;
	else Out_dat = In0;
end
endmodule
