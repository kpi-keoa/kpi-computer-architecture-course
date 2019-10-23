`timescale 1ns/1ps

`define REG_WIDTH 32
`define NUM_OF_CELL 128
`define DM_ADDR_WIDTH $clog2(`NUM_OF_CELL)

module data_memory(d_in, d_out, addr, we, clk);

input [`REG_WIDTH-1:0] d_in;
input [`DM_ADDR_WIDTH-1:0] addr;
input we, clk;

output [`REG_WIDTH-1:0] d_out;

reg [`REG_WIDTH-1:0] ram [`NUM_OF_CELL-1:0];

assign d_out = ram[addr];

initial $readmemb("/home/drcah4ec/lab7_gpio/mips_core/mem_data.dat", ram);

initial $writememh("/home/drcah4ec/lab7_gpio/mips_core/DMEM_OUT.dat", ram);

always @(posedge clk) begin
	if(we) ram[addr] <= d_in;
end
endmodule

