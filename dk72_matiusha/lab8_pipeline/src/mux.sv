`timescale 1ns/1ps
module mux2dimto1(in, sel, out);

parameter 	WIDTH=32,
			INPUTS=32;
localparam sel_width=$clog2(INPUTS);

input wire [WIDTH-1:0][INPUTS-1:0] in;
input wire [sel_width-1:0] sel;
output wire [WIDTH-1:0] out;

assign out=in[sel];

endmodule
