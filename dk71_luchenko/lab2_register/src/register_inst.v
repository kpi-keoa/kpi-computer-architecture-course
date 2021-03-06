//Made on the basis of the student Vadim Kharchuk
`timescale 1ns/1ps

module test_reg;


reg inClk_sig;
reg [31:0] inD1_sig;
reg [4:0]  inW1_sig;
reg inWe_sig;
reg [4:0]inR1_sig, inR2_sig;
reg inArstn_sig;
reg [31:0] Out1_sig, Out2_sig;



register register_inst(
	.inR1(inR1_sig),	// input [4:0] inR1_sig
	.inR2(inR2_sig),	// input [4:0] inR2_sig
	.inW1(inW1_sig),	// input [4:0] inW1_sig
	.inD1(inD1_sig),	// input [31:0] inD1_sig
	.inWe(inWe_sig),	// input  inWe_sig
	.inClk(inClk_sig),	// input  inClk_sig
	.inArstn(inArstn_sig),	// input  inArstn_sig
	.Out1(Out1_sig),	// output [31:0] Out1_sig
	.Out2(Out2_sig) 	// output [31:0] Out2_sig
);

initial begin inWe_sig = 1'b0;
	forever #5 inWe_sig = ~inWe_sig; end

initial begin inClk_sig = 1'b0;
	forever #1 inClk_sig = ~inClk_sig; end

initial begin inArstn_sig = 1'b0;
	      #12 inArstn_sig = 1'b1;
	      #40 inArstn_sig = 1'b0;
	      #2 inArstn_sig = 1'b1; end	

initial begin inR1_sig = 1'b0;
	      inR2_sig = 1'b0; end

initial begin for (int i = 0;i < 32; i++) begin
		#3  inW1_sig = i;
		#10 inD1_sig = 32'(i) | 32'hbadb0000;
		inR1_sig = 5'(i);
		inR2_sig = 5'(i); end end

initial begin #440 $stop(); end

endmodule
