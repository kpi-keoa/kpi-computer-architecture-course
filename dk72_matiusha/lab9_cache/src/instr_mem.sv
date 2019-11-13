`timescale 1ns/1ps


module instr_mem(
	input logic [31:0] addr,
	output logic [31:0] rd);

	parameter capacity = 128;
	localparam addr_width = $clog2(capacity);

	logic [31:0] ROM [capacity-1:0];

	wire [addr_width-1:0] addr_stripped = addr[0+:addr_width];


	initial $readmemh("/home/rabu/dev/comparch/kpi-computer-architecture-course/dk72_matiusha/lab9_cache/fw/memfile.dat", ROM);
	assign rd = ROM[addr_stripped]; // word aligned
endmodule


