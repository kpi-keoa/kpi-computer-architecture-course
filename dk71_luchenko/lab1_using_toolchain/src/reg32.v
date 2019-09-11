module reg32(i_clk, i_we, i_d, o_q, i_arstn);

parameter WIDTH = 32;

input i_clk, i_we, i_arstn;
input [WIDTH-1:0] i_d;
output reg [WIDTH-1:0] o_q;

always @(posedge i_clk or negedge i_arstn) begin 
	if(!i_arstn) begin 
		o_q <= {WIDTH{1'b0}};
	end else if(i_we) begin
		o_q <= i_d;
	end else begin 
		o_q <= o_q;
	end 
end

endmodule 