`timescale 1 ps / 1 ps
module decoder(sel,we,out);

parameter width = 32;

input [4:0]sel ;
input we ;
output reg [width-1:0]out;

always @(*) begin
	out = {we,31'h0} >> sel ;
end

endmodule 
