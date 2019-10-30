`timescale 1ns/1ps
module regfile  (clk, we, arstn, ra, rb, waddr, wdata, rd1, rd2);

parameter 	REGS_NUM = 32,
			REGS_WIDTH = 32;
localparam addr_width = $clog2(REGS_NUM);

input wire clk;
input wire we;
input wire arstn;
input wire [addr_width-1:0] ra, rb, waddr;
input wire [REGS_WIDTH-1:0] wdata;
output wire [REGS_WIDTH-1:0] rd1, rd2;

reg [REGS_WIDTH-1:1][REGS_NUM-1:0] regs;//(sic!) packed array
wire [REGS_WIDTH-1:0][REGS_NUM-1:0] state;


always_ff @ (negedge clk or negedge arstn) begin
	if(!arstn)regs <= '0;
	else if (we && waddr) regs[waddr] <= wdata;
	else regs <= regs;
end

//read of addr 0 returns 0. write has no effect
assign state[31:1] = regs[31:1];
assign state[0] = 32'h0;

mux2dimto1 #(32,32) mux1 (.in(state),.out(rd1),.sel(ra));
mux2dimto1 #(32,32) mux2 (.in(state),.out(rd2),.sel(rb));

endmodule

