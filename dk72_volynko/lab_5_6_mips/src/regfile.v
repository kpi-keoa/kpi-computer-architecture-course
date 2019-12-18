//MODULE REALISATION TAKEN FROM Oleh Matiusha

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

reg [REGS_WIDTH-1:0] regs [REGS_NUM-1:1];
wire [REGS_WIDTH-1:0] state [REGS_NUM-1:0];


always @ (posedge clk or negedge arstn) begin
	if(!arstn)begin
		integer i;
		for (i = 1; i < REGS_NUM; i=i+1) begin
			regs[i] =  {REGS_WIDTH{1'b0}};
		end
	end
	else if (we && waddr) regs[waddr] <= wdata;
end

genvar i;
generate
	for(i=1;i<32;i=i+1) begin: regassign
		assign state[i] = regs[i];
	end
endgenerate

assign state[0] = 32'h0;

assign rd1 = state[ra];
assign rd2 = state[rb];


endmodule
