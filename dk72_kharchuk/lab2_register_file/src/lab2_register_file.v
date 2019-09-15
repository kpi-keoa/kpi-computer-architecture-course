`timescale 1ns/1ps

module registerFile(inR1, inR2, inW1, inD1, inWe, inClk, inArstn, Out1, Out2, );

integer i;

input wire [4:0] inR1, inR2;	//register to Read 
input wire [4:0] inW1;			//register to write to
input wire inWe;					//write enabled signal
input wire [31:0] inD1;			//Data to write 
input wire inClk;
input wire inArstn;

output reg [31:0] Out1, Out2;	//Output data from R1 and R2

reg [31:0] rf[31:0];				//Array of 32 registers each of 32 bits 

always @(posedge inClk or negedge inArstn)begin
	if(!inArstn)
		begin
			for(i = 0;i < 32; i = i + 1) rf[i] <= 2'b00;
		end
	else if(inWe) 
	rf[inW1] <= inD1;
	
	Out1 <= rf[inR1];
	Out2 <= rf[inR2];
	end
endmodule
