`timescale 1ns/1ps

module registerFile(
input wire [4:0] inR1, 
input wire [4:0] inR2, 
input wire [4:0] inW1, 
input wire [31:0] inD1,
input wire inWe,
input wire inClk,	
output wire [31:0] Out1,
output wire [31:0] Out2
);

reg [31:0] rf[31:0];				//Array of 32 registers each of 32 bits 

initial $readmemb("/home/morel/workspace/ComputerArchitecture/kpi-computer-architecture-course/dk72_kharchuk/lab5-6_mips/check/reg_data.dat", rf);

always @(posedge inClk ) begin
	if(inWe) rf[inW1] <= inD1;
	$writememh("/home/morel/workspace/ComputerArchitecture/kpi-computer-architecture-course/dk72_kharchuk/lab5-6_mips/check/reg_out.dat", rf);
end
	
assign	Out1 = rf[inR1];
assign	Out2 = rf[inR2];
endmodule 

