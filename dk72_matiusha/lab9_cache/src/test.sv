`timescale 1ns/1ps

module test;//mips
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


// `timescale 1ns/1ps

// module test;//cache

// 	logic clk, we, re;
// 	logic [31:0] addr, wd;
// 	wire [31:0] rd;
// 	wire stall;



// 	cache cache_inst(clk, we, re, addr, wd, rd, stall);

// 	initial begin
// 		clk=0;
// 		forever #1 clk = ~clk;
// 	end

// 	initial begin 
// 		we=0;
// 		re=0;
// 		addr=0;
// 		wd=0;

// 		#10;

// 		wd='h1488;
// 		we=1;

// 		#10;

// 		addr=3;
// 		wd='h1010;

// 		#10;

// 		addr = 10;

// 		#10;

// 		addr = 20;

// 		#10;

// 		addr = 'h40;
// 		wd = 'h1337;

// 		#10;

// 		we=0;
// 		re=1;
// 		addr=0;

// 		#10;
// 		$finish;

// 	end
// endmodule