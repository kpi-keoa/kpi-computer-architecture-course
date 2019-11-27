`timescale 1ns/1ps

module extender(immi16, ext_op,ext_out);

input [15:0] immi16;
input ext_op;

output [31:0] ext_out;

wire the_bit; 

assign the_bit = immi16[15] & ext_op;
assign ext_out = {{16{the_bit}},immi16};

endmodule 

