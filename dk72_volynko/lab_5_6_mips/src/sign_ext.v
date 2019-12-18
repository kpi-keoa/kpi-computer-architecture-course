`timescale 1ns/1ps

module sign_ext #(parameter WIDTH = 32)(a,y,ctl);

input ctl;
input  [15:0] a;
output  [WIDTH-1:0] y;

assign y = {{16{a[15]&ctl}}, a};

endmodule
