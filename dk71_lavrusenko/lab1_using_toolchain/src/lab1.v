`timescale 1ns/1ps
// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Sun Sep 15 14:35:06 2019"

module lab1(
	clk,
	arst,
	we,
	rst,
	data,
	q
);


input wire	clk;
input wire	arst;
input wire	we;
input wire	rst;
input wire	[31:0] data;
output wire	[31:0] q;

wire	[31:0] d;
wire	[31:0] dout;
wire	SYNTHESIZED_WIRE_0;
wire	[0:31] SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_1 = 0;




register	b2v_inst(
	.i_clk(clk),
	.i_d(d[0]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[0]));


register	b2v_inst1(
	.i_clk(clk),
	.i_d(d[1]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[1]));


register	b2v_inst10(
	.i_clk(clk),
	.i_d(d[10]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[10]));


register	b2v_inst11(
	.i_clk(clk),
	.i_d(d[11]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[11]));


register	b2v_inst12(
	.i_clk(clk),
	.i_d(d[12]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[12]));


register	b2v_inst13(
	.i_clk(clk),
	.i_d(d[13]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[13]));


register	b2v_inst14(
	.i_clk(clk),
	.i_d(d[14]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[14]));


register	b2v_inst15(
	.i_clk(clk),
	.i_d(d[15]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[15]));


register	b2v_inst16(
	.i_clk(clk),
	.i_d(d[16]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[16]));


register	b2v_inst17(
	.i_clk(clk),
	.i_d(d[17]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[17]));


register	b2v_inst18(
	.i_clk(clk),
	.i_d(d[18]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[18]));


register	b2v_inst19(
	.i_clk(clk),
	.i_d(d[19]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[19]));


register	b2v_inst2(
	.i_clk(clk),
	.i_d(d[2]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[2]));


register	b2v_inst20(
	.i_clk(clk),
	.i_d(d[20]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[20]));


register	b2v_inst21(
	.i_clk(clk),
	.i_d(d[21]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[21]));


register	b2v_inst22(
	.i_clk(clk),
	.i_d(d[22]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[22]));


register	b2v_inst23(
	.i_clk(clk),
	.i_d(d[23]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[23]));


register	b2v_inst24(
	.i_clk(clk),
	.i_d(d[24]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[24]));


register	b2v_inst25(
	.i_clk(clk),
	.i_d(d[25]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[25]));


register	b2v_inst26(
	.i_clk(clk),
	.i_d(d[26]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[26]));


register	b2v_inst27(
	.i_clk(clk),
	.i_d(d[27]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[27]));


register	b2v_inst28(
	.i_clk(clk),
	.i_d(d[28]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[28]));


register	b2v_inst29(
	.i_clk(clk),
	.i_d(d[29]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[29]));


register	b2v_inst3(
	.i_clk(clk),
	.i_d(d[3]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[3]));


register	b2v_inst30(
	.i_clk(clk),
	.i_d(d[30]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[30]));


register	b2v_inst31(
	.i_clk(clk),
	.i_d(d[31]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[31]));



lpm_mux0	b2v_inst34(
	.sel(SYNTHESIZED_WIRE_0),
	.data0x(SYNTHESIZED_WIRE_1),
	.data1x(data),
	.result(d));

assign	SYNTHESIZED_WIRE_0 =  ~rst;


register	b2v_inst4(
	.i_clk(clk),
	.i_d(d[4]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[4]));


register	b2v_inst5(
	.i_clk(clk),
	.i_d(d[5]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[5]));


register	b2v_inst6(
	.i_clk(clk),
	.i_d(d[6]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[6]));


register	b2v_inst7(
	.i_clk(clk),
	.i_d(d[7]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[7]));


register	b2v_inst8(
	.i_clk(clk),
	.i_d(d[8]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[8]));


register	b2v_inst9(
	.i_clk(clk),
	.i_d(d[9]),
	.i_arstn(arst),
	.i_we(we),
	.o_q(dout[9]));

assign	q = dout;

endmodule
