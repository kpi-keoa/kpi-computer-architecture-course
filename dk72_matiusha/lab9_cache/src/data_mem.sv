`timescale 1ns/1ps

module data_mem  #(	parameter capacity = 64, WIDTH = 32)   (
	input logic clk, we,
	input logic [$clog2(capacity)-1:0] w_addr, r_addr,
	input logic [WIDTH-1:0] wd,
	output logic [WIDTH-1:0] rd);

	localparam addr_width = $clog2(capacity);

	wire [addr_width-1:0] addr_stripped = w_addr[0+:addr_width];
	logic [WIDTH-1:0] RAM [capacity-1:0];

	initial begin 
		for (int i = 0; i < capacity; i++) begin
			RAM[i]='0;
		end
		$readmemh("/home/rabu/dev/comparch/kpi-computer-architecture-course/dk72_matiusha/lab9_cache/fw/initrd.dat", RAM);
	end
	
	//assign rd = RAM[addr_stripped]; // word aligned

	always_ff @(posedge clk) begin
		if (we) RAM[addr_stripped] <= wd;
		rd <= RAM[r_addr[0+:addr_width]];
	end


endmodule



