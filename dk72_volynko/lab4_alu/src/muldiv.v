`timescale 1ns/1ps

module muldiv(input [31:0] in_A, in_B, input [1:0] check, output [31:0] out);

wire [63:0] mulout;
wire [63:0] result;
wire [31:0] divout, res;
assign mulout = in_A * in_B;
assign divout = in_A / in_B;
assign res = in_A % in_B;

assign result = (check[0]) ? {res, divout} : mulout;

assign out = (check[1]) ? result[63:32] : result[31:0];

endmodule

