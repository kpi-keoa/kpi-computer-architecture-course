`timescale 1ns/1ps
module mips_tb();

reg CLOCK_sig,arst_n_sig;
wire [1:0]LEDR_sig;

mips mi
(
	.CLOCK(CLOCK_sig),
	.arst_n(arst_n_sig),
	.LEDR(LEDR_sig)
);

initial begin
       CLOCK_sig = 0;
	forever #2 CLOCK_sig = ~CLOCK_sig;
end

initial begin
	 arst_n_sig = 1'b0;
	#5 arst_n_sig = 1'b1;
end

initial begin
	#50000 $stop();
end

endmodule

