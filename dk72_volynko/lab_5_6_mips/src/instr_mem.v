//SOME ELEMENTS TAKEN FROM Oleh Matiusha

`timescale 1ns/1ps


module imem #(parameter capacity = 128) (addr, rd);

parameter WIDTH = 32;

input  [WIDTH-1:0] addr;
output  [WIDTH-1:0] rd;
	
localparam addr_width = $clog2(capacity);

reg [WIDTH-1:0] ROM [capacity-1:0];

wire [addr_width-1:0] addr_stripped = addr[0+:addr_width];


initial $readmemh("/home/nazar/Lab_5_6/fw/fw.txt", ROM);

assign rd = ROM[addr_stripped]; // word aligned

endmodule
