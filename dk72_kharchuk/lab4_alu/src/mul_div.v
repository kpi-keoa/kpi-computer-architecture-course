`timescale 1ns/1ps
/* Some code parts used here, was taken from Nazar Volynko realisation */
module mul_div #(parameter WIDTH = 32)(
input [WIDTH-1:0] in_A, in_B,
input [1:0] in_opt, 
output [WIDTH:0] out);  

wire [WIDTH*2-1:0] mulout;
wire [WIDTH*2-1:0] result;
wire [WIDTH:0] divout, res;

assign mulO = in_A * in_B;
assign divO = in_A / in_B;
assign res = in_A % in_B;

assign result = (in_opt[0]) ? {res, divO} : mulO;
assign out = (in_opt[1]) ? result[WIDTH*2-1:WIDTH] : result[WIDTH-1:0];
endmodule

