`timescale 1ns/1ps

module test;
	reg clk, rst_n;
reg [4:0] dbg;
wire [4:0] wdbg;
wire [9:0] led;
assign wdbg[4:0] = dbg[4:0];
	mips m1(clk, {3'b0, rst_n}, led, wdbg);

	initial begin
		clk=0;
		forever #1 clk = ~clk;
	end

	initial begin 
		#2 rst_n = 0;
		#8 rst_n = 1'b1;
		#10 dbg = 7'h00;
		#20000 dbg = 7'hf;
		#20000 dbg = 7'h1f;

		#20000 $finish;
	end
endmodule