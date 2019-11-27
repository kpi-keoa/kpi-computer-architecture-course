`timescale 1ns/1ps
module bus_mux (adr,in1,in2,out);

input [31:0] in1; 
input [31:0] in2;
input adr;

output reg [31:0] out;

always @(*)begin
if(adr)begin
	out = in1;
end else
	out = in2;
end

endmodule

