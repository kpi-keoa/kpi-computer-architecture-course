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
		$readmemh("/home/rabu/dev/comparch/kpi-computer-architecture-course/dk72_matiusha/lab8_pipeline/fw/initrd.dat", RAM);
	end
	
	//assign rd = RAM[addr_stripped]; // word aligned

	always_ff @(posedge clk) begin
		if (we) RAM[addr_stripped] <= wd;
		rd <= RAM[addr_stripped];
	end


endmodule



