`timescale 1ns/1ps

module reg_file #(parameter REG_WIDTH = 1, NUM_OF_REGS = 1)(d_in, w_addr, clk, we, r_addr_a, d_out_a, r_addr_b, d_out_b, arst_n);

localparam ADDR_WIDTH = $clog2(REG_WIDTH);

input [REG_WIDTH-1:0] d_in;
input [ADDR_WIDTH-1:0] w_addr;
input [ADDR_WIDTH-1:0] r_addr_a;
input [ADDR_WIDTH-1:0] r_addr_b;
input clk, we, arst_n;

output [REG_WIDTH-1:0] d_out_a;
output [REG_WIDTH-1:0] d_out_b;

reg [REG_WIDTH-1:0] regs [NUM_OF_REGS-1:0];

integer i;

assign d_out_a = r_addr_a == 0 ? 0 : regs[r_addr_a];
assign d_out_b = r_addr_b == 0 ? 0 : regs[r_addr_b];

always @(negedge clk or negedge arst_n) begin
	if(!arst_n) begin
		for(i = 0; i < NUM_OF_REGS; i = i + 1)
			regs[i] <= 32'b0;
	end
	else if(we && w_addr) regs[w_addr] <= d_in;
end
endmodule
