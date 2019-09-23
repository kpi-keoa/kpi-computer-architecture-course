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
// CREATED		"Sat Sep 14 18:19:17 2019"
`timescale 1 ps / 1ps
module Block2(
	i_clk,
	i_arst,
	we,
	adr1,
	adr2,
	data,
	sel,
	Dout,
	Doutput1
);


input wire	i_clk;
input wire	i_arst;
input wire	we;
input wire	[4:0] adr1;
input wire	[4:0] adr2;
input wire	[31:0] data;
input wire	[4:0] sel;
output wire	[31:0] Dout;
output wire	[31:0] Doutput1;

wire	we0;
wire	we1;
wire	we10;
wire	we11;
wire	we12;
wire	we13;
wire	we14;
wire	we15;
wire	we16;
wire	we17;
wire	we18;
wire	we19;
wire	we2;
wire	we20;
wire	we21;
wire	we22;
wire	we23;
wire	we24;
wire	we25;
wire	we26;
wire	we27;
wire	we28;
wire	we29;
wire	we3;
wire	we30;
wire	we31;
wire	we4;
wire	we5;
wire	we6;
wire	we7;
wire	we8;
wire	we9;
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





lpm_mux0	b2v_inst(
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
	.sel(adr2),
	.result(Dout));


lpm_mux0	b2v_inst1(
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
	.sel(adr1),
	.result(Doutput1));


register	b2v_inst10(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we1),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_87));
	defparam	b2v_inst10.WIDTH = 32;


register	b2v_inst11(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we2),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_85));
	defparam	b2v_inst11.WIDTH = 32;


register	b2v_inst12(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we3),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_84));
	defparam	b2v_inst12.WIDTH = 32;


register	b2v_inst13(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we4),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_83));
	defparam	b2v_inst13.WIDTH = 32;


register	b2v_inst14(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we5),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_82));
	defparam	b2v_inst14.WIDTH = 32;


register	b2v_inst15(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we7),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_80));
	defparam	b2v_inst15.WIDTH = 32;


register	b2v_inst16(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we14),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_72));
	defparam	b2v_inst16.WIDTH = 32;


register	b2v_inst17(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we8),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_79));
	defparam	b2v_inst17.WIDTH = 32;


register	b2v_inst18(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we9),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_78));
	defparam	b2v_inst18.WIDTH = 32;


register	b2v_inst19(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we10),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_77));
	defparam	b2v_inst19.WIDTH = 32;


decoder	b2v_inst2(
	.we(we),
	.sel(sel),
	.out({we31,we30,we29,we28,we27,we26,we25,we24,we23,we22,we21,we20,we19,we18,we17,we16,we15,we14,we13,we12,we11,we10,we9,we8,we7,we6,we5,we4,we3,we2,we1,we0}));
	defparam	b2v_inst2.width = 32;


register	b2v_inst20(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we11),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_76));
	defparam	b2v_inst20.WIDTH = 32;


register	b2v_inst21(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we12),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_74));
	defparam	b2v_inst21.WIDTH = 32;


register	b2v_inst22(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we13),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_73));
	defparam	b2v_inst22.WIDTH = 32;


register	b2v_inst23(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we15),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_71));
	defparam	b2v_inst23.WIDTH = 32;


register	b2v_inst24(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we22),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_95));
	defparam	b2v_inst24.WIDTH = 32;


register	b2v_inst25(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we16),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_70));
	defparam	b2v_inst25.WIDTH = 32;


register	b2v_inst26(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we17),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_69));
	defparam	b2v_inst26.WIDTH = 32;


register	b2v_inst27(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we18),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_68));
	defparam	b2v_inst27.WIDTH = 32;


register	b2v_inst28(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we19),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_67));
	defparam	b2v_inst28.WIDTH = 32;


register	b2v_inst29(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we20),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_66));
	defparam	b2v_inst29.WIDTH = 32;


register	b2v_inst30(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we21),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_65));
	defparam	b2v_inst30.WIDTH = 32;


register	b2v_inst31(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we23),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_94));
	defparam	b2v_inst31.WIDTH = 32;


register	b2v_inst32(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we30),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_75));
	defparam	b2v_inst32.WIDTH = 32;


register	b2v_inst33(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we24),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_93));
	defparam	b2v_inst33.WIDTH = 32;


register	b2v_inst34(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we25),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_92));
	defparam	b2v_inst34.WIDTH = 32;


register	b2v_inst35(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we26),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_91));
	defparam	b2v_inst35.WIDTH = 32;


register	b2v_inst36(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we27),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_90));
	defparam	b2v_inst36.WIDTH = 32;


register	b2v_inst37(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we28),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_89));
	defparam	b2v_inst37.WIDTH = 32;


register	b2v_inst38(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we29),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_86));
	defparam	b2v_inst38.WIDTH = 32;


register	b2v_inst39(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we31),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_64));
	defparam	b2v_inst39.WIDTH = 32;


register	b2v_inst8(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we6),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_81));
	defparam	b2v_inst8.WIDTH = 32;


register	b2v_inst9(
	.i_clk(i_clk),
	.i_arstn(i_arst),
	.i_we(we0),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_88));
	defparam	b2v_inst9.WIDTH = 32;


endmodule
