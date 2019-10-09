`timescale 1ns/1ps

module test;
	reg clk, rst_n;
	wire [9:0] dbg;
	mips m1(clk, {3'b0, rst_n}, dbg[9:0]);

	initial begin
		clk=0;
		forever #1 clk = ~clk;
	end

	initial begin 
		#2 rst_n = 0;
		#8 rst_n = 1'b1;
		#1000 $finish;
	end
endmodule
