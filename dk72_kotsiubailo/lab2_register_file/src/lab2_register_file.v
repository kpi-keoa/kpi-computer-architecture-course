// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Mon Sep 16 12:21:26 2019"

`timescale 1ns / 1ps
module LABA_2(
	clk,
	we,
	arstn,
	adr,
	data,
	readadr_a,
	readadr_b,
	A,
	B
);


input wire	clk;
input wire	we;
input wire	arstn;
input wire	[4:0] adr;
input wire	[31:0] data;
input wire	[4:0] readadr_a;
input wire	[4:0] readadr_b;
output wire	[31:0] A;
output wire	[31:0] B;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	[31:0] SYNTHESIZED_WIRE_96;
wire	[31:0] SYNTHESIZED_WIRE_97;
wire	[31:0] SYNTHESIZED_WIRE_98;
wire	[31:0] SYNTHESIZED_WIRE_99;
wire	[31:0] SYNTHESIZED_WIRE_100;
wire	[31:0] SYNTHESIZED_WIRE_101;
wire	[31:0] SYNTHESIZED_WIRE_102;
wire	[31:0] SYNTHESIZED_WIRE_103;
wire	[31:0] SYNTHESIZED_WIRE_104;
wire	[31:0] SYNTHESIZED_WIRE_105;
wire	[31:0] SYNTHESIZED_WIRE_106;
wire	[31:0] SYNTHESIZED_WIRE_107;
wire	[31:0] SYNTHESIZED_WIRE_108;
wire	[31:0] SYNTHESIZED_WIRE_109;
wire	[31:0] SYNTHESIZED_WIRE_110;
wire	[31:0] SYNTHESIZED_WIRE_111;
wire	[31:0] SYNTHESIZED_WIRE_112;
wire	[31:0] SYNTHESIZED_WIRE_113;
wire	[31:0] SYNTHESIZED_WIRE_114;
wire	[31:0] SYNTHESIZED_WIRE_115;
wire	[31:0] SYNTHESIZED_WIRE_116;
wire	[31:0] SYNTHESIZED_WIRE_117;
wire	[31:0] SYNTHESIZED_WIRE_118;
wire	[31:0] SYNTHESIZED_WIRE_119;
wire	[31:0] SYNTHESIZED_WIRE_120;
wire	[31:0] SYNTHESIZED_WIRE_121;
wire	[31:0] SYNTHESIZED_WIRE_122;
wire	[31:0] SYNTHESIZED_WIRE_123;
wire	[31:0] SYNTHESIZED_WIRE_124;
wire	[31:0] SYNTHESIZED_WIRE_125;
wire	[31:0] SYNTHESIZED_WIRE_126;
wire	[31:0] SYNTHESIZED_WIRE_127;
wire	SYNTHESIZED_WIRE_90;
wire	SYNTHESIZED_WIRE_91;
wire	SYNTHESIZED_WIRE_92;
wire	SYNTHESIZED_WIRE_93;
wire	SYNTHESIZED_WIRE_94;
wire	SYNTHESIZED_WIRE_95;





register	b2v_inst(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_0),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_100));
	defparam	b2v_inst.WIDTH = 32;


register	b2v_inst10(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_1),
	
	.o_q(SYNTHESIZED_WIRE_108));
	defparam	b2v_inst10.WIDTH = 32;


register	b2v_inst11(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_2),
	
	.o_q(SYNTHESIZED_WIRE_106));
	defparam	b2v_inst11.WIDTH = 32;


register	b2v_inst12(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_3),
	
	.o_q(SYNTHESIZED_WIRE_110));
	defparam	b2v_inst12.WIDTH = 32;


register	b2v_inst13(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_4),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_105));
	defparam	b2v_inst13.WIDTH = 32;


register	b2v_inst14(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_5),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_104));
	defparam	b2v_inst14.WIDTH = 32;


register	b2v_inst15(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_6),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_103));
	defparam	b2v_inst15.WIDTH = 32;


register	b2v_inst16(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_7),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_111));
	defparam	b2v_inst16.WIDTH = 32;


register	b2v_inst17(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_8),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_123));
	defparam	b2v_inst17.WIDTH = 32;


register	b2v_inst18(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_9),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_122));
	defparam	b2v_inst18.WIDTH = 32;


register	b2v_inst19(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_10),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_121));
	defparam	b2v_inst19.WIDTH = 32;


register	b2v_inst2(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_11),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_99));
	defparam	b2v_inst2.WIDTH = 32;


register	b2v_inst20(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_12),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_124));
	defparam	b2v_inst20.WIDTH = 32;


register	b2v_inst21(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_13),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_118));
	defparam	b2v_inst21.WIDTH = 32;


register	b2v_inst22(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_14),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_107));
	defparam	b2v_inst22.WIDTH = 32;


register	b2v_inst23(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_15),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_96));
	defparam	b2v_inst23.WIDTH = 32;


register	b2v_inst24(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_16),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_125));
	defparam	b2v_inst24.WIDTH = 32;


register	b2v_inst25(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_17),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_117));
	defparam	b2v_inst25.WIDTH = 32;


register	b2v_inst26(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_18),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_116));
	defparam	b2v_inst26.WIDTH = 32;


register	b2v_inst27(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_19),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_115));
	defparam	b2v_inst27.WIDTH = 32;


register	b2v_inst28(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_20),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_119));
	defparam	b2v_inst28.WIDTH = 32;


register	b2v_inst29(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_21),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_114));
	defparam	b2v_inst29.WIDTH = 32;


register	b2v_inst3(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_22),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_98));
	defparam	b2v_inst3.WIDTH = 32;


register	b2v_inst30(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_23),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_113));
	defparam	b2v_inst30.WIDTH = 32;


register	b2v_inst31(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_24),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_112));
	defparam	b2v_inst31.WIDTH = 32;


register	b2v_inst32(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_25),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_120));
	defparam	b2v_inst32.WIDTH = 32;


lpm_decode0	b2v_inst33(
	.enable(we),
	.data(adr),
	.eq0(SYNTHESIZED_WIRE_15),
	.eq1(SYNTHESIZED_WIRE_14),
	.eq2(SYNTHESIZED_WIRE_13),
	.eq3(SYNTHESIZED_WIRE_10),
	.eq4(SYNTHESIZED_WIRE_9),
	.eq5(SYNTHESIZED_WIRE_8),
	.eq6(SYNTHESIZED_WIRE_12),
	.eq7(SYNTHESIZED_WIRE_16),
	.eq8(SYNTHESIZED_WIRE_93),
	.eq9(SYNTHESIZED_WIRE_92),
	.eq10(SYNTHESIZED_WIRE_91),
	.eq11(SYNTHESIZED_WIRE_22),
	.eq12(SYNTHESIZED_WIRE_11),
	.eq13(SYNTHESIZED_WIRE_90),
	.eq14(SYNTHESIZED_WIRE_0),
	.eq15(SYNTHESIZED_WIRE_6),
	.eq16(SYNTHESIZED_WIRE_5),
	.eq17(SYNTHESIZED_WIRE_4),
	.eq18(SYNTHESIZED_WIRE_2),
	.eq19(SYNTHESIZED_WIRE_1),
	.eq20(SYNTHESIZED_WIRE_95),
	.eq21(SYNTHESIZED_WIRE_3),
	.eq22(SYNTHESIZED_WIRE_7),
	.eq23(SYNTHESIZED_WIRE_24),
	.eq24(SYNTHESIZED_WIRE_23),
	.eq25(SYNTHESIZED_WIRE_21),
	.eq26(SYNTHESIZED_WIRE_19),
	.eq27(SYNTHESIZED_WIRE_94),
	.eq28(SYNTHESIZED_WIRE_18),
	.eq29(SYNTHESIZED_WIRE_17),
	.eq30(SYNTHESIZED_WIRE_20),
	.eq31(SYNTHESIZED_WIRE_25));


lpm_mux0	b2v_inst34(
	.data0x(SYNTHESIZED_WIRE_96),
	.data10x(SYNTHESIZED_WIRE_97),
	.data11x(SYNTHESIZED_WIRE_98),
	.data12x(SYNTHESIZED_WIRE_99),
	.data13x(SYNTHESIZED_WIRE_100),
	.data14x(SYNTHESIZED_WIRE_101),
	.data15x(SYNTHESIZED_WIRE_102),
	.data16x(SYNTHESIZED_WIRE_103),
	.data17x(SYNTHESIZED_WIRE_104),
	.data18x(SYNTHESIZED_WIRE_105),
	.data19x(SYNTHESIZED_WIRE_106),
	.data1x(SYNTHESIZED_WIRE_107),
	.data20x(SYNTHESIZED_WIRE_108),
	.data21x(SYNTHESIZED_WIRE_109),
	.data22x(SYNTHESIZED_WIRE_110),
	.data23x(SYNTHESIZED_WIRE_111),
	.data24x(SYNTHESIZED_WIRE_112),
	.data25x(SYNTHESIZED_WIRE_113),
	.data26x(SYNTHESIZED_WIRE_114),
	.data27x(SYNTHESIZED_WIRE_115),
	.data28x(SYNTHESIZED_WIRE_116),
	.data29x(SYNTHESIZED_WIRE_117),
	.data2x(SYNTHESIZED_WIRE_118),
	.data30x(SYNTHESIZED_WIRE_119),
	.data31x(SYNTHESIZED_WIRE_120),
	.data3x(SYNTHESIZED_WIRE_121),
	.data4x(SYNTHESIZED_WIRE_122),
	.data5x(SYNTHESIZED_WIRE_123),
	.data6x(SYNTHESIZED_WIRE_124),
	.data7x(SYNTHESIZED_WIRE_125),
	.data8x(SYNTHESIZED_WIRE_126),
	.data9x(SYNTHESIZED_WIRE_127),
	.sel(readadr_b),
	.result(B));


lpm_mux0	b2v_inst35(
	.data0x(SYNTHESIZED_WIRE_96),
	.data10x(SYNTHESIZED_WIRE_97),
	.data11x(SYNTHESIZED_WIRE_98),
	.data12x(SYNTHESIZED_WIRE_99),
	.data13x(SYNTHESIZED_WIRE_100),
	.data14x(SYNTHESIZED_WIRE_101),
	.data15x(SYNTHESIZED_WIRE_102),
	.data16x(SYNTHESIZED_WIRE_103),
	.data17x(SYNTHESIZED_WIRE_104),
	.data18x(SYNTHESIZED_WIRE_105),
	.data19x(SYNTHESIZED_WIRE_106),
	.data1x(SYNTHESIZED_WIRE_107),
	.data20x(SYNTHESIZED_WIRE_108),
	.data21x(SYNTHESIZED_WIRE_109),
	.data22x(SYNTHESIZED_WIRE_110),
	.data23x(SYNTHESIZED_WIRE_111),
	.data24x(SYNTHESIZED_WIRE_112),
	.data25x(SYNTHESIZED_WIRE_113),
	.data26x(SYNTHESIZED_WIRE_114),
	.data27x(SYNTHESIZED_WIRE_115),
	.data28x(SYNTHESIZED_WIRE_116),
	.data29x(SYNTHESIZED_WIRE_117),
	.data2x(SYNTHESIZED_WIRE_118),
	.data30x(SYNTHESIZED_WIRE_119),
	.data31x(SYNTHESIZED_WIRE_120),
	.data3x(SYNTHESIZED_WIRE_121),
	.data4x(SYNTHESIZED_WIRE_122),
	.data5x(SYNTHESIZED_WIRE_123),
	.data6x(SYNTHESIZED_WIRE_124),
	.data7x(SYNTHESIZED_WIRE_125),
	.data8x(SYNTHESIZED_WIRE_126),
	.data9x(SYNTHESIZED_WIRE_127),
	.sel(readadr_a),
	.result(A));


register	b2v_inst4(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_90),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_101));
	defparam	b2v_inst4.WIDTH = 32;


register	b2v_inst5(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_91),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_97));
	defparam	b2v_inst5.WIDTH = 32;


register	b2v_inst6(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_92),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_127));
	defparam	b2v_inst6.WIDTH = 32;


register	b2v_inst7(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_93),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_126));
	defparam	b2v_inst7.WIDTH = 32;


register	b2v_inst8(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_94),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_102));
	defparam	b2v_inst8.WIDTH = 32;


register	b2v_inst9(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_95),
	
	.o_q(SYNTHESIZED_WIRE_109));
	defparam	b2v_inst9.WIDTH = 32;


endmodule
