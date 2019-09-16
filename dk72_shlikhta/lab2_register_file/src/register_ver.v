`timescale 1ns/1ps
module register_ver(i_CLK, i_ASRST, i_WE, i_D, o_Q);

//ports declaration
input i_CLK;	//clock input
input i_ASRST;	//async reset (active low)
input i_WE;		//write enable
input [31:0] i_D;			//input data
output reg [31:0] o_Q;	//output (@rising)

always @(posedge i_CLK or negedge i_ASRST) begin
	if (!i_ASRST) begin
		o_Q = 32'b0;
	end else if (i_WE) begin
		o_Q <= i_D;
	end else begin
		o_Q <= o_Q;
	end
end

endmodule
