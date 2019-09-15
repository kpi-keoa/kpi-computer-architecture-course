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
// CREATED		"Sun Sep 15 00:28:38 2019"

`timescale 1ns/1ps

module register_file(
	CLK,
	ASRST,
	WE,
	IN_DATA,
	READ_ADDR_A,
	READ_ADDR_B,
	WE_ADDR,
	OUT_DATA_A,
	OUT_DATA_B
);


input wire	CLK;
input wire	ASRST;
input wire	WE;
input wire	[31:0] IN_DATA;
input wire	[4:0] READ_ADDR_A;
input wire	[4:0] READ_ADDR_B;
input wire	[4:0] WE_ADDR;
output wire	[31:0] OUT_DATA_A;
output wire	[31:0] OUT_DATA_B;

wire	[31:0] o_O;
wire	[31:0] SYNTHESIZED_WIRE_64;
wire	[31:0] SYNTHESIZED_WIRE_65;
wire	[31:0] SYNTHESIZED_WIRE_66;
wire	[31:0] SYNTHESIZED_WIRE_67;
wire	[31:0] SYNTHESIZED_WIRE_68;
wire	[31:0] SYNTHESIZED_WIRE_69;
wire	[31:0] SYNTHESIZED_WIRE_70;
wire	[31:0] SYNTHESIZED_WIRE_71;
wire	[31:0] SYNTHESIZED_WIRE_72;
wire	[31:0] SYNTHESIZED_WIRE_73;
wire	[31:0] SYNTHESIZED_WIRE_74;
wire	[31:0] SYNTHESIZED_WIRE_75;
wire	[31:0] SYNTHESIZED_WIRE_76;
wire	[31:0] SYNTHESIZED_WIRE_77;
wire	[31:0] SYNTHESIZED_WIRE_78;
wire	[31:0] SYNTHESIZED_WIRE_79;
wire	[31:0] SYNTHESIZED_WIRE_80;
wire	[31:0] SYNTHESIZED_WIRE_81;
wire	[31:0] SYNTHESIZED_WIRE_82;
wire	[31:0] SYNTHESIZED_WIRE_83;
wire	[31:0] SYNTHESIZED_WIRE_84;
wire	[31:0] SYNTHESIZED_WIRE_85;
wire	[31:0] SYNTHESIZED_WIRE_86;
wire	[31:0] SYNTHESIZED_WIRE_87;
wire	[31:0] SYNTHESIZED_WIRE_88;
wire	[31:0] SYNTHESIZED_WIRE_89;
wire	[31:0] SYNTHESIZED_WIRE_90;
wire	[31:0] SYNTHESIZED_WIRE_91;
wire	[31:0] SYNTHESIZED_WIRE_92;
wire	[31:0] SYNTHESIZED_WIRE_93;
wire	[31:0] SYNTHESIZED_WIRE_94;
wire	[31:0] SYNTHESIZED_WIRE_95;





register_ver	b2v_inst(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[0]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_64));


register_ver	b2v_inst1(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[1]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_75));


register_ver	b2v_inst10(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[10]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_65));


register_ver	b2v_inst11(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[11]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_66));


register_ver	b2v_inst12(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[12]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_67));


register_ver	b2v_inst13(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[13]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_68));


register_ver	b2v_inst14(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[14]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_69));


register_ver	b2v_inst15(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[15]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_70));


register_ver	b2v_inst16(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[16]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_71));


register_ver	b2v_inst17(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[17]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_72));


register_ver	b2v_inst18(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[18]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_73));


register_ver	b2v_inst19(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[19]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_74));


register_ver	b2v_inst2(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[2]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_86));


register_ver	b2v_inst20(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[20]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_76));


register_ver	b2v_inst21(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[21]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_77));


register_ver	b2v_inst22(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[22]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_78));


register_ver	b2v_inst23(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[23]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_79));


register_ver	b2v_inst24(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[24]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_80));


register_ver	b2v_inst25(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[25]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_81));


register_ver	b2v_inst26(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[26]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_82));


register_ver	b2v_inst27(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[27]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_83));


register_ver	b2v_inst28(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[28]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_84));


register_ver	b2v_inst29(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[29]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_85));


register_ver	b2v_inst3(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[3]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_89));


register_ver	b2v_inst30(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[30]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_87));


register_ver	b2v_inst31(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[31]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_88));


lpm_mux0	b2v_inst32(
	.data0x(SYNTHESIZED_WIRE_64),
	.data10x(SYNTHESIZED_WIRE_65),
	.data11x(SYNTHESIZED_WIRE_66),
	.data12x(SYNTHESIZED_WIRE_67),
	.data13x(SYNTHESIZED_WIRE_68),
	.data14x(SYNTHESIZED_WIRE_69),
	.data15x(SYNTHESIZED_WIRE_70),
	.data16x(SYNTHESIZED_WIRE_71),
	.data17x(SYNTHESIZED_WIRE_72),
	.data18x(SYNTHESIZED_WIRE_73),
	.data19x(SYNTHESIZED_WIRE_74),
	.data1x(SYNTHESIZED_WIRE_75),
	.data20x(SYNTHESIZED_WIRE_76),
	.data21x(SYNTHESIZED_WIRE_77),
	.data22x(SYNTHESIZED_WIRE_78),
	.data23x(SYNTHESIZED_WIRE_79),
	.data24x(SYNTHESIZED_WIRE_80),
	.data25x(SYNTHESIZED_WIRE_81),
	.data26x(SYNTHESIZED_WIRE_82),
	.data27x(SYNTHESIZED_WIRE_83),
	.data28x(SYNTHESIZED_WIRE_84),
	.data29x(SYNTHESIZED_WIRE_85),
	.data2x(SYNTHESIZED_WIRE_86),
	.data30x(SYNTHESIZED_WIRE_87),
	.data31x(SYNTHESIZED_WIRE_88),
	.data3x(SYNTHESIZED_WIRE_89),
	.data4x(SYNTHESIZED_WIRE_90),
	.data5x(SYNTHESIZED_WIRE_91),
	.data6x(SYNTHESIZED_WIRE_92),
	.data7x(SYNTHESIZED_WIRE_93),
	.data8x(SYNTHESIZED_WIRE_94),
	.data9x(SYNTHESIZED_WIRE_95),
	.sel(READ_ADDR_A),
	.result(OUT_DATA_A));


lpm_mux0	b2v_inst33(
	.data0x(SYNTHESIZED_WIRE_64),
	.data10x(SYNTHESIZED_WIRE_65),
	.data11x(SYNTHESIZED_WIRE_66),
	.data12x(SYNTHESIZED_WIRE_67),
	.data13x(SYNTHESIZED_WIRE_68),
	.data14x(SYNTHESIZED_WIRE_69),
	.data15x(SYNTHESIZED_WIRE_70),
	.data16x(SYNTHESIZED_WIRE_71),
	.data17x(SYNTHESIZED_WIRE_72),
	.data18x(SYNTHESIZED_WIRE_73),
	.data19x(SYNTHESIZED_WIRE_74),
	.data1x(SYNTHESIZED_WIRE_75),
	.data20x(SYNTHESIZED_WIRE_76),
	.data21x(SYNTHESIZED_WIRE_77),
	.data22x(SYNTHESIZED_WIRE_78),
	.data23x(SYNTHESIZED_WIRE_79),
	.data24x(SYNTHESIZED_WIRE_80),
	.data25x(SYNTHESIZED_WIRE_81),
	.data26x(SYNTHESIZED_WIRE_82),
	.data27x(SYNTHESIZED_WIRE_83),
	.data28x(SYNTHESIZED_WIRE_84),
	.data29x(SYNTHESIZED_WIRE_85),
	.data2x(SYNTHESIZED_WIRE_86),
	.data30x(SYNTHESIZED_WIRE_87),
	.data31x(SYNTHESIZED_WIRE_88),
	.data3x(SYNTHESIZED_WIRE_89),
	.data4x(SYNTHESIZED_WIRE_90),
	.data5x(SYNTHESIZED_WIRE_91),
	.data6x(SYNTHESIZED_WIRE_92),
	.data7x(SYNTHESIZED_WIRE_93),
	.data8x(SYNTHESIZED_WIRE_94),
	.data9x(SYNTHESIZED_WIRE_95),
	.sel(READ_ADDR_B),
	.result(OUT_DATA_B));


demux_ver	b2v_inst34(
	.i_I(WE),
	.i_ADDR(WE_ADDR),
	.o_O(o_O));


register_ver	b2v_inst4(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[4]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_90));


register_ver	b2v_inst5(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[5]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_91));


register_ver	b2v_inst6(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[6]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_92));


register_ver	b2v_inst7(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[7]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_93));


register_ver	b2v_inst8(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[8]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_94));


register_ver	b2v_inst9(
	.i_CLK(CLK),
	.i_ASRST(ASRST),
	.i_WE(o_O[9]),
	.i_D(IN_DATA),
	.o_Q(SYNTHESIZED_WIRE_95));


endmodule
