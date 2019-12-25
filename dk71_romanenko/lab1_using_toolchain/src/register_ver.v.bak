`timescale 1ns/1ps
module register_ver(i_clk, i_arstn, i_rstn, i_we, i_d, o_q);

parameter WIDTH = 32;

//ports declaration
input i_clk;	//clock input
input i_arstn;	//async reset (active low)
input i_rstn;	//sync reset (active low)
input i_we;		//write enable
input [WIDTH-1:0] i_d;			//input data
output reg [WIDTH-1:0] o_q;	//output (@rising)

always @(posedge i_clk or negedge i_arstn) begin
	if (!i_arstn) begin
		o_q <= {WIDTH{1'b0}};
	end else if(!i_rstn) begin
		o_q <= {WIDTH{1'b0}};
	end else if (i_we) begin
		o_q <= i_d;
	end else begin
		o_q <= o_q;
	end
end

endmodule
