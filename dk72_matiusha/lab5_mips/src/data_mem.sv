// module data_mem(
// 	input logic clk, we,
// 	input logic [31:0] addr, wd,
// 	output logic [31:0] rd);

// parameter width_bytes = 4;
// parameter capacity = 128;
// localparam addr_width = $clog2(capacity)+2;


// logic [7:0] RAM [width_bytes*capacity-1:0]; //byte-aligned
// wire addr_stripped = addr[0+:addr_width];

// assign rd = RAM[addr_stripped+:width_bytes]; 

// always_ff @(posedge clk)
// 	if (we) RAM[addr_stripped+:width_bytes] <= wd;
// endmodule


`timescale 1ns/1ps

module data_mem(
	input logic clk, we,
	input logic [31:0] addr, wd,
	output logic [31:0] rd);

	parameter capacity = 128;
	localparam addr_width = $clog2(capacity);

	wire [addr_width-1:0] addr_stripped = addr[0+:addr_width];
	logic [31:0] RAM [capacity-1:0];

	initial begin 
		for (int i = 0; i < capacity; i++) begin
			RAM[i]='0;
		end
		$readmemh("/home/rabu/dev/comparch/kpi-computer-architecture-course/dk72_matiusha/lab5_mips/fw/initrd.dat", RAM);
	end
	
	//assign rd = RAM[addr_stripped]; // word aligned

	always_ff @(posedge clk)
		if (we) RAM[addr_stripped] <= wd;
		
	always_ff @(negedge clk)
		rd <= RAM[addr_stripped];

endmodule



