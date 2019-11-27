`timescale 1ns/1ps

module program_counter #(parameter WIDTH = 32) (
input [WIDTH-1:0] data_in ,
output reg [WIDTH-1:0] data_out,
input clk, arst_n
);

always @(posedge clk or negedge arst_n) begin
	if(~arst_n)
		data_out = 0;
	else 
		data_out = data_in;
end

endmodule 

