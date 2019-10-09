`timescale 1ns/1ps

module flopr(i_clk, i_arstn, i_we, i_data, o_data);

input i_clk;
input i_we;
input i_arstn;
input [31:0] i_data;
output reg [31:0] o_data;

always @(posedge i_clk or negedge i_arstn) begin 
	if(!i_arstn) begin 
		o_data <= 32'b0;
	end else if(i_we) begin
		o_data <= i_data;
	end else begin 
		o_data <= o_data;
	end 
end

endmodule 
