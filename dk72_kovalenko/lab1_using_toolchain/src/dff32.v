module dff32 (i_clk, i_arst, i_d, o_q);

parameter WIDTH = 32;

input i_clk;
input i_arst;
input [WIDTH-1:0] i_d;
output [WIDTH-1:0] o_q;
reg [WIDTH-1:0] o_q;
always @(posedge i_clk or posedge i_arst) begin
if(i_arst) begin
	o_q <= {WIDTH{1'b0}};
	end else begin 
   o_q <= i_d;
	end
end
endmodule
