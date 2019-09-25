//Made on the basis of the student Vadim Kharchuk

`timescale 1ns/1ps

module register(inR1, inR2, inW1, inD1, inWe, inClk, inArstn, Out1, Out2);
integer i;

input wire [4:0] inR1, inR2;	
input wire [4:0] inW1;
input wire inWe;					
input wire [31:0] inD1;
input wire inClk;
input wire inArstn;

output reg [31:0] Out1, Out2;

reg [31:0] rf[31:0];	

always @(posedge inClk or negedge inArstn) begin
	if(!inArstn) begin
	for(i = 0;i < 32; i = i + 1) rf[i] <= 1'b0; end
	
	else if(inWe) 
	rf[inW1] <= inD1;
	
	if(!inArstn) begin
	for(i = 0;i < 32; i = i + 1)
	rf[i] <= rf[i]; end
	
	else if(inWe) 
	Out1 = rf[inR1];
	Out2 = rf[inR2]; end

endmodule
