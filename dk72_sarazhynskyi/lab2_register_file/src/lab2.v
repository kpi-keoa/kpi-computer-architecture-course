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
// CREATED		"Sat Oct  5 21:22:47 2019"

`timescale 1ns/1ps

module lab2(
	we,
	arstn,
	clk,
	data,
	readaddrA,
	readaddrB,
	waddr,
	dataA,
	dataB
);


input wire	we;
input wire	arstn;
input wire	clk;
input wire	[31:0] data;
input wire	[4:0] readaddrA;
input wire	[4:0] readaddrB;
input wire	[4:0] waddr;
output wire	[31:0] dataA;
output wire	[31:0] dataB;

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





lpm_decode0	b2v_inst(
	.enable(we),
	.data(waddr),
	.eq0(SYNTHESIZED_WIRE_0),
	.eq1(SYNTHESIZED_WIRE_1),
	.eq2(SYNTHESIZED_WIRE_12),
	.eq3(SYNTHESIZED_WIRE_23),
	.eq4(SYNTHESIZED_WIRE_90),
	.eq5(SYNTHESIZED_WIRE_91),
	.eq6(SYNTHESIZED_WIRE_92),
	.eq7(SYNTHESIZED_WIRE_93),
	.eq8(SYNTHESIZED_WIRE_94),
	.eq9(SYNTHESIZED_WIRE_95),
	.eq10(SYNTHESIZED_WIRE_2),
	.eq11(SYNTHESIZED_WIRE_3),
	.eq12(SYNTHESIZED_WIRE_4),
	.eq13(SYNTHESIZED_WIRE_5),
	.eq14(SYNTHESIZED_WIRE_6),
	.eq15(SYNTHESIZED_WIRE_7),
	.eq16(SYNTHESIZED_WIRE_8),
	.eq17(SYNTHESIZED_WIRE_9),
	.eq18(SYNTHESIZED_WIRE_10),
	.eq19(SYNTHESIZED_WIRE_11),
	.eq20(SYNTHESIZED_WIRE_13),
	.eq21(SYNTHESIZED_WIRE_14),
	.eq22(SYNTHESIZED_WIRE_15),
	.eq23(SYNTHESIZED_WIRE_16),
	.eq24(SYNTHESIZED_WIRE_17),
	.eq25(SYNTHESIZED_WIRE_18),
	.eq26(SYNTHESIZED_WIRE_19),
	.eq27(SYNTHESIZED_WIRE_20),
	.eq28(SYNTHESIZED_WIRE_21),
	.eq29(SYNTHESIZED_WIRE_22),
	.eq30(SYNTHESIZED_WIRE_24),
	.eq31(SYNTHESIZED_WIRE_25));


flopr	b2v_inst0(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_0),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_96));


flopr	b2v_inst1(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_1),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_107));


flopr	b2v_inst10(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_2),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_97));


flopr	b2v_inst11(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_3),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_98));


flopr	b2v_inst12(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_4),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_99));


flopr	b2v_inst13(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_5),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_100));


flopr	b2v_inst14(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_6),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_101));


flopr	b2v_inst15(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_7),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_102));


flopr	b2v_inst16(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_8),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_103));


flopr	b2v_inst17(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_9),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_104));


flopr	b2v_inst18(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_10),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_105));


flopr	b2v_inst19(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_11),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_106));


flopr	b2v_inst2(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_12),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_118));


flopr	b2v_inst20(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_13),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_108));


flopr	b2v_inst21(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_14),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_109));


flopr	b2v_inst22(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_15),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_110));


flopr	b2v_inst23(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_16),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_111));


flopr	b2v_inst24(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_17),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_112));


flopr	b2v_inst25(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_18),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_113));


flopr	b2v_inst26(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_19),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_114));


flopr	b2v_inst27(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_20),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_115));


flopr	b2v_inst28(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_21),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_116));


flopr	b2v_inst29(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_22),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_117));


flopr	b2v_inst3(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_23),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_121));


flopr	b2v_inst30(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_24),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_119));


flopr	b2v_inst31(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_25),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_120));


lpm_mux0	b2v_inst33(
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
	.sel(readaddrA),
	.result(dataA));


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
	.sel(readaddrB),
	.result(dataB));


flopr	b2v_inst4(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_90),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_122));


flopr	b2v_inst5(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_91),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_123));


flopr	b2v_inst6(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_92),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_124));


flopr	b2v_inst7(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_93),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_125));


flopr	b2v_inst8(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_94),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_126));


flopr	b2v_inst9(
	.i_clk(clk),
	.i_arstn(arstn),
	.i_we(SYNTHESIZED_WIRE_95),
	.i_data(data),
	.o_data(SYNTHESIZED_WIRE_127));


endmodule
