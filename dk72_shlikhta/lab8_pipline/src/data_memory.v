`timescale 1ns/1ps

module data_memory #(parameter WIDTH = 1, VOLUME = 1)(d_in, d_out, addr, we, clk);

localparam ADDR_WIDTH = $clog2(VOLUME);

input [WIDTH-1:0] d_in;
input [ADDR_WIDTH-1:0] addr;
input we, clk;

output [WIDTH-1:0] d_out;

reg [WIDTH-1:0] ram [VOLUME-1:0];

assign d_out = ram[addr];

initial $readmemb("/home/drcah4ec/lab8_pipeline_mips_core/pipepline_mips/test/mem_data.dat", ram);

always @(posedge clk) begin
	if(we) ram[addr] <= d_in;
end
endmodule

