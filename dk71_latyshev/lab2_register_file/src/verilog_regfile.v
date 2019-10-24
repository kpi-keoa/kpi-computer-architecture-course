`timescale 1ns/1ps

module lab2_register_file(readadrA, readadrB, adr, data, we, clk, arstn, A, B );

integer i;

input wire [4:0] readadrA, readadrB;	//register to Read 
input wire [4:0] adr;			//register to write to
input wire we;					//write enabled signal
input wire [31:0] data;			//Data to write 
input wire clk;
input wire arstn;

output [31:0] A, B;	//Output data from R1 and R2

reg [31:0] rf[31:0];				//Array of 32 registers each of 32 bits 

always @(posedge clk or negedge arstn)begin
	if(!arstn)
		begin
			for(i = 0;i < 32; i = i + 1) rf[i] <= 32'b00;
		end
	else if(we) rf[adr] <= data;
end
	
	assign A = rf[readadrA];
	assign B = rf[readadrB];
endmodule
