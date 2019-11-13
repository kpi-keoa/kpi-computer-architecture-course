`timescale 1ns/1ps
module register(i_clk, i_d, i_arstn, i_we, o_q);

parameter WIDTH = 32;

input i_clk; //clock
input [WIDTH-1:0] i_d; 	// input data
input i_we; // write enable
input i_arstn; // async reset (active low)

output reg [WIDTH-1:0] o_q; // output data


always @(posedge i_clk or negedge i_arstn) begin
	if (!i_arstn) begin
		o_q <= {WIDTH{1'b0}};
	end else if (i_we) begin
		o_q <= i_d;
	end else begin
		o_q <= o_q;
	end
end

endmodule
