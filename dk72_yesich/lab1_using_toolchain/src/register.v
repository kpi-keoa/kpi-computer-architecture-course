`timescale 1 ns / 1 ps
module register(i_clk,i_arstn,i_srstn,i_we,i_d,o_q);
parameter WIDTH = 32;
input i_clk;
input i_arstn;
input i_srstn;
input i_we;
input [WIDTH-1:0] i_d;
output reg [WIDTH-1:0] o_q; 
always @(posedge i_clk or negedge i_arstn ) begin
	if(!i_arstn) begin
		o_q <= {WIDTH{1'b0}};
	end else if(!i_srstn) begin
		o_q <= {WIDTH{1'b0}};
		
	end else if(i_we) begin
		o_q <= i_d;
		
	end else
		o_q <= o_q;
	end

endmodule 
