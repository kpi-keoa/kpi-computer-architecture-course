`timescale 1ns/1ps

module registerFile (
input wire [4:0] i_R1, 
input wire [4:0] i_R2, 
input wire [4:0] i_W1, 
input wire [31:0] i_D1,
input wire We,
input wire clk,	
input wire arst_n,
output wire [31:0] r1,
output wire [31:0] r2
);

reg [31:0] regf[31:0];			

initial regf[0] = 32'b0; 

always @(posedge clk or negedge arst_n) begin
	if(~arst_n)begin
		integer i;
		for (i = 1; i < 32; i=i+1) begin
			regf[i] <=  {32{1'b0}};
			end
	end else if(We)begin 
		regf[i_W1] <= i_D1;
		regf[0] <= 32'b0;
	end
	
end
	
assign	r1 = regf[i_R1];
assign	r2 = regf[i_R2];

endmodule 

