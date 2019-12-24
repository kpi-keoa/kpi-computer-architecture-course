


`timescale 1ns/1ps

module test;
	reg clk, rst_n;

	wire [31:0] ioport;
	wire [3:0] ledr;
	reg extclk;
	assign ioport[0:0] = extclk;
	// // 1 7leg ddr to 1
	// //2 7leg af to pwmb
	// //3 extclk to 0 (later)
	// //4 write ocra ocrb
	// //5 launch timer with CLKSRC, PWMB, TOP_OCRA
	mips m1(clk, {3'b0, rst_n}, ledr, ioport);

	initial begin
		clk=0;
		forever #1 clk = ~clk;
	end

	initial begin
		extclk=0;
		forever #10 extclk = ~extclk;
	end

	initial begin 
		rst_n = 0;
		#2 rst_n = 1'b1;


		#2000 $finish;
	end
endmodule

















// `timescale 1ns/1ps

// module test;

// reg clk, rst_n, tcnt_we, ocra_we, ocrb_we, ocrc_we, tccr_we, ddr_we, port_we, af1_we, af2_we;
// reg [31:0] data_in;
// wire inta, intb, intc, into, pwma, pwmb, pwmc, ext_clk;
// wire [31:0] o_tcnt, o_ocra, o_ocrb, o_ocrc, o_tccr,  ddr_out, port_out, pin_out, af1_out, af2_out, ioport;
// reg [4:0] extclk_sel;

// reg extclk;
// assign ioport[0:0] = extclk;

// timer #(32) timer1(clk, rst_n, tcnt_we, ocra_we, ocrb_we, ocrc_we, tccr_we, ext_clk, data_in, 
// 					inta, intb, intc, into, pwma, pwmb, pwmc, o_tcnt, o_ocra, o_ocrb, o_ocrc, o_tccr);
// 	// input clk,    // Clock
// 	// input 	rst_n,  // Asynchronous reset active low
// 	// 		tcnt_we, ocra_we, ocrb_we, ocrc_we, tccr_we, ext_clk,
// 	// input 	[WIDTH-1:0] data_in,
// 	// output 	inta, intb, intc, into, pwma, pwmb, pwmc,
// 	// output [WIDTH-1:0] o_tcnt, o_ocra, o_ocrb, o_ocrc, o_tccr
// 	//assign {PRESCALE, CLKSRC, INTOE, INTCE, INTBE, INTAE, PEC, PEB, PEA, DIR, TOPVAL, CNTEN} = TCCR;
// gpio #(32) gpio1(clk, rst_n, ddr_we, port_we, af1_we, af2_we, pwma, pwmb, pwmc, extclk_sel, data_in, 
// 					ddr_out, port_out, pin_out, af1_out, af2_out, ext_clk, ioport);


// initial begin
// 	clk=0;
// 	forever #1 clk = ~clk;
// end

// initial begin
// 	extclk=0;
// 	forever #10 extclk = ~extclk;
// end

// //TODO conf gpio af to 7th leg and input to leg0 extclk and give a pwm
// // 1 7leg ddr to 1
// //2 7leg af to pwmb
// //3 extclk to 0 (later)
// //4 write ocra ocrb
// //5 launch timer with CLKSRC, PWMB, TOP_OCRA
// initial begin 
// 	{rst_n, tcnt_we, ocra_we, ocrb_we, ocrc_we, tccr_we, data_in, ddr_we, port_we, af1_we, af2_we, extclk_sel, extclk} <= 0;
// 	#2 rst_n <= 1;

// 	ddr_we<=1;
// 	data_in<=32'h80;
// 	#2;
// 	ddr_we<=0;

// 	af1_we<=1;
// 	data_in<=32'h2<<14;
// 	#2;
// 	af1_we<=0;	

// 	ocra_we<=1;
// 	data_in<=32'h8;
// 	#2;
// 	ocra_we<=0;

// 	ocrb_we<=1;
// 	data_in<=32'h2;
// 	#2;
// 	ocrb_we<=0;

// 	tccr_we<=1;
// 	data_in<=32'b100000100011;
// 	#2;
// 	tccr_we<=0;
// 	//assign {PRESCALE, CLKSRC, INTOE, INTCE, INTBE, INTAE, PEC, PEB, PEA, DIR, TOPVAL, CNTEN} = TCCR;




// 	#1000 $finish;

// end
	
// endmodule





