`timescale 1ns/1ps

`define REG_WIDTH 32
`define REG_ADDR_WIDTH 5

`define NUM_OF_REGS 32

module reg_file(d_in, w_addr, clk, we, r_addr_a, d_out_a, r_addr_b, d_out_b);

input [`REG_WIDTH-1:0] d_in;
input [`REG_ADDR_WIDTH-1:0] w_addr;
input [`REG_ADDR_WIDTH-1:0] r_addr_a;
input [`REG_ADDR_WIDTH-1:0] r_addr_b;
input clk, we;

output [`REG_WIDTH-1:0] d_out_a;
output [`REG_WIDTH-1:0] d_out_b;

reg [`REG_WIDTH-1:0] reg_file32b_32 [`NUM_OF_REGS-1:0];

assign d_out_a = r_addr_a == 0 ? 0 :  reg_file32b_32[r_addr_a];
assign d_out_b = r_addr_b == 0 ? 0 :  reg_file32b_32[r_addr_b];

initial $readmemb("/home/drcah4ec/mips_core/reg_data.dat", reg_file32b_32);

always @(posedge clk) begin
	if(we && w_addr) reg_file32b_32[w_addr] = d_in;
	$writememh("/home/drcah4ec/mips_core/OUT.dat", reg_file32b_32);
end
endmodule
