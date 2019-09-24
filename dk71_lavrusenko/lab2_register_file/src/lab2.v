`timescale 1ns/1ps
// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Sun Sep 15 14:09:17 2019"

module lab2(we, arst, clk, data, RA, RB, RW, OUTA, OUTB);


input wire	we;
input wire	arst;
input wire	clk;
input wire	[31:0] data;
input wire	[4:0] RA;
input wire	[4:0] RB;
input wire	[4:0] RW;
output wire	[31:0] OUTA;
output wire	[31:0] OUTB;

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
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;
wire	SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_49;
wire	SYNTHESIZED_WIRE_50;
wire	SYNTHESIZED_WIRE_51;
wire	SYNTHESIZED_WIRE_52;
wire	SYNTHESIZED_WIRE_53;
wire	SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_55;
wire	SYNTHESIZED_WIRE_56;
wire	SYNTHESIZED_WIRE_57;
wire	SYNTHESIZED_WIRE_58;
wire	SYNTHESIZED_WIRE_59;
wire	SYNTHESIZED_WIRE_60;
wire	[31:0] SYNTHESIZED_WIRE_131;
wire	[31:0] SYNTHESIZED_WIRE_132;
wire	[31:0] SYNTHESIZED_WIRE_133;
wire	[31:0] SYNTHESIZED_WIRE_134;
wire	[31:0] SYNTHESIZED_WIRE_135;
wire	[31:0] SYNTHESIZED_WIRE_136;
wire	[31:0] SYNTHESIZED_WIRE_137;
wire	[31:0] SYNTHESIZED_WIRE_138;
wire	[31:0] SYNTHESIZED_WIRE_139;
wire	[31:0] SYNTHESIZED_WIRE_140;
wire	[31:0] SYNTHESIZED_WIRE_141;
wire	[31:0] SYNTHESIZED_WIRE_142;
wire	[31:0] SYNTHESIZED_WIRE_143;
wire	[31:0] SYNTHESIZED_WIRE_144;
wire	[31:0] SYNTHESIZED_WIRE_145;
wire	[31:0] SYNTHESIZED_WIRE_146;
wire	[31:0] SYNTHESIZED_WIRE_147;
wire	[31:0] SYNTHESIZED_WIRE_148;
wire	[31:0] SYNTHESIZED_WIRE_149;
wire	[31:0] SYNTHESIZED_WIRE_150;
wire	[31:0] SYNTHESIZED_WIRE_151;
wire	[31:0] SYNTHESIZED_WIRE_152;
wire	[31:0] SYNTHESIZED_WIRE_153;
wire	[31:0] SYNTHESIZED_WIRE_154;
wire	[31:0] SYNTHESIZED_WIRE_155;
wire	[31:0] SYNTHESIZED_WIRE_156;
wire	[31:0] SYNTHESIZED_WIRE_157;
wire	[31:0] SYNTHESIZED_WIRE_158;
wire	[31:0] SYNTHESIZED_WIRE_159;
wire	[31:0] SYNTHESIZED_WIRE_160;
wire	[31:0] SYNTHESIZED_WIRE_161;
wire	[31:0] SYNTHESIZED_WIRE_162;
wire	SYNTHESIZED_WIRE_125;
wire	[0:31] SYNTHESIZED_WIRE_126;
wire	[31:0] SYNTHESIZED_WIRE_127;
wire	SYNTHESIZED_WIRE_128;
wire	SYNTHESIZED_WIRE_129;
wire	SYNTHESIZED_WIRE_130;

assign	SYNTHESIZED_WIRE_125 = 0;
assign	SYNTHESIZED_WIRE_126 = 0;




register	b2v_inst(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_0),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_127));
	defparam	b2v_inst.WIDTH = 32;


register	b2v_inst1(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_1),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_142));
	defparam	b2v_inst1.WIDTH = 32;


register	b2v_inst10(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_2),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_132));
	defparam	b2v_inst10.WIDTH = 32;


register	b2v_inst11(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_3),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_133));
	defparam	b2v_inst11.WIDTH = 32;


register	b2v_inst12(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_4),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_134));
	defparam	b2v_inst12.WIDTH = 32;


register	b2v_inst13(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_5),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_135));
	defparam	b2v_inst13.WIDTH = 32;


register	b2v_inst14(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_6),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_136));
	defparam	b2v_inst14.WIDTH = 32;


register	b2v_inst15(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_7),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_137));
	defparam	b2v_inst15.WIDTH = 32;


register	b2v_inst16(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_8),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_138));
	defparam	b2v_inst16.WIDTH = 32;


register	b2v_inst17(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_9),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_139));
	defparam	b2v_inst17.WIDTH = 32;


register	b2v_inst18(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_10),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_140));
	defparam	b2v_inst18.WIDTH = 32;


register	b2v_inst19(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_11),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_141));
	defparam	b2v_inst19.WIDTH = 32;


register	b2v_inst2(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_12),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_153));
	defparam	b2v_inst2.WIDTH = 32;


register	b2v_inst20(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_13),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_143));
	defparam	b2v_inst20.WIDTH = 32;


register	b2v_inst21(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_14),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_144));
	defparam	b2v_inst21.WIDTH = 32;


register	b2v_inst22(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_15),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_145));
	defparam	b2v_inst22.WIDTH = 32;


register	b2v_inst23(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_16),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_146));
	defparam	b2v_inst23.WIDTH = 32;


register	b2v_inst24(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_17),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_147));
	defparam	b2v_inst24.WIDTH = 32;


register	b2v_inst25(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_18),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_148));
	defparam	b2v_inst25.WIDTH = 32;


register	b2v_inst26(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_19),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_149));
	defparam	b2v_inst26.WIDTH = 32;


register	b2v_inst27(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_20),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_150));
	defparam	b2v_inst27.WIDTH = 32;


register	b2v_inst28(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_21),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_151));
	defparam	b2v_inst28.WIDTH = 32;


register	b2v_inst29(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_22),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_152));
	defparam	b2v_inst29.WIDTH = 32;


register	b2v_inst3(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_23),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_156));
	defparam	b2v_inst3.WIDTH = 32;


register	b2v_inst30(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_24),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_154));
	defparam	b2v_inst30.WIDTH = 32;


register	b2v_inst31(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_25),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_155));
	defparam	b2v_inst31.WIDTH = 32;

assign	SYNTHESIZED_WIRE_25 = we & SYNTHESIZED_WIRE_26;

assign	SYNTHESIZED_WIRE_24 = we & SYNTHESIZED_WIRE_27;

assign	SYNTHESIZED_WIRE_22 = we & SYNTHESIZED_WIRE_28;

assign	SYNTHESIZED_WIRE_21 = we & SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_20 = we & SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_19 = we & SYNTHESIZED_WIRE_31;

assign	SYNTHESIZED_WIRE_18 = we & SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_17 = we & SYNTHESIZED_WIRE_33;


register	b2v_inst4(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_34),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_157));
	defparam	b2v_inst4.WIDTH = 32;

assign	SYNTHESIZED_WIRE_16 = we & SYNTHESIZED_WIRE_35;

assign	SYNTHESIZED_WIRE_15 = we & SYNTHESIZED_WIRE_36;

assign	SYNTHESIZED_WIRE_14 = we & SYNTHESIZED_WIRE_37;

assign	SYNTHESIZED_WIRE_13 = we & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_11 = we & SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_10 = we & SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_9 = we & SYNTHESIZED_WIRE_41;

assign	SYNTHESIZED_WIRE_8 = we & SYNTHESIZED_WIRE_42;

assign	SYNTHESIZED_WIRE_7 = we & SYNTHESIZED_WIRE_43;

assign	SYNTHESIZED_WIRE_6 = we & SYNTHESIZED_WIRE_44;


register	b2v_inst5(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_45),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_158));
	defparam	b2v_inst5.WIDTH = 32;

assign	SYNTHESIZED_WIRE_5 = we & SYNTHESIZED_WIRE_46;

assign	SYNTHESIZED_WIRE_4 = we & SYNTHESIZED_WIRE_47;

assign	SYNTHESIZED_WIRE_3 = we & SYNTHESIZED_WIRE_48;

assign	SYNTHESIZED_WIRE_2 = we & SYNTHESIZED_WIRE_49;

assign	SYNTHESIZED_WIRE_130 = we & SYNTHESIZED_WIRE_50;

assign	SYNTHESIZED_WIRE_129 = we & SYNTHESIZED_WIRE_51;

assign	SYNTHESIZED_WIRE_128 = we & SYNTHESIZED_WIRE_52;

assign	SYNTHESIZED_WIRE_56 = we & SYNTHESIZED_WIRE_53;

assign	SYNTHESIZED_WIRE_45 = we & SYNTHESIZED_WIRE_54;

assign	SYNTHESIZED_WIRE_34 = we & SYNTHESIZED_WIRE_55;


register	b2v_inst6(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_56),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_159));
	defparam	b2v_inst6.WIDTH = 32;

assign	SYNTHESIZED_WIRE_23 = we & SYNTHESIZED_WIRE_57;

assign	SYNTHESIZED_WIRE_12 = we & SYNTHESIZED_WIRE_58;

assign	SYNTHESIZED_WIRE_1 = we & SYNTHESIZED_WIRE_59;

assign	SYNTHESIZED_WIRE_0 = we & SYNTHESIZED_WIRE_60;


lpn_decode0	b2v_inst64(
	.data(RW),
	.eq0(SYNTHESIZED_WIRE_60),
	.eq1(SYNTHESIZED_WIRE_59),
	.eq2(SYNTHESIZED_WIRE_58),
	.eq3(SYNTHESIZED_WIRE_57),
	.eq4(SYNTHESIZED_WIRE_55),
	.eq5(SYNTHESIZED_WIRE_54),
	.eq6(SYNTHESIZED_WIRE_53),
	.eq7(SYNTHESIZED_WIRE_52),
	.eq8(SYNTHESIZED_WIRE_51),
	.eq9(SYNTHESIZED_WIRE_50),
	.eq10(SYNTHESIZED_WIRE_49),
	.eq11(SYNTHESIZED_WIRE_48),
	.eq12(SYNTHESIZED_WIRE_47),
	.eq13(SYNTHESIZED_WIRE_46),
	.eq14(SYNTHESIZED_WIRE_44),
	.eq15(SYNTHESIZED_WIRE_43),
	.eq16(SYNTHESIZED_WIRE_42),
	.eq17(SYNTHESIZED_WIRE_41),
	.eq18(SYNTHESIZED_WIRE_40),
	.eq19(SYNTHESIZED_WIRE_39),
	.eq20(SYNTHESIZED_WIRE_38),
	.eq21(SYNTHESIZED_WIRE_37),
	.eq22(SYNTHESIZED_WIRE_36),
	.eq23(SYNTHESIZED_WIRE_35),
	.eq24(SYNTHESIZED_WIRE_33),
	.eq25(SYNTHESIZED_WIRE_32),
	.eq26(SYNTHESIZED_WIRE_31),
	.eq27(SYNTHESIZED_WIRE_30),
	.eq28(SYNTHESIZED_WIRE_29),
	.eq29(SYNTHESIZED_WIRE_28),
	.eq30(SYNTHESIZED_WIRE_27),
	.eq31(SYNTHESIZED_WIRE_26));


lpm_mux0	b2v_inst65(
	.data0x(SYNTHESIZED_WIRE_131),
	.data10x(SYNTHESIZED_WIRE_132),
	.data11x(SYNTHESIZED_WIRE_133),
	.data12x(SYNTHESIZED_WIRE_134),
	.data13x(SYNTHESIZED_WIRE_135),
	.data14x(SYNTHESIZED_WIRE_136),
	.data15x(SYNTHESIZED_WIRE_137),
	.data16x(SYNTHESIZED_WIRE_138),
	.data17x(SYNTHESIZED_WIRE_139),
	.data18x(SYNTHESIZED_WIRE_140),
	.data19x(SYNTHESIZED_WIRE_141),
	.data1x(SYNTHESIZED_WIRE_142),
	.data20x(SYNTHESIZED_WIRE_143),
	.data21x(SYNTHESIZED_WIRE_144),
	.data22x(SYNTHESIZED_WIRE_145),
	.data23x(SYNTHESIZED_WIRE_146),
	.data24x(SYNTHESIZED_WIRE_147),
	.data25x(SYNTHESIZED_WIRE_148),
	.data26x(SYNTHESIZED_WIRE_149),
	.data27x(SYNTHESIZED_WIRE_150),
	.data28x(SYNTHESIZED_WIRE_151),
	.data29x(SYNTHESIZED_WIRE_152),
	.data2x(SYNTHESIZED_WIRE_153),
	.data30x(SYNTHESIZED_WIRE_154),
	.data31x(SYNTHESIZED_WIRE_155),
	.data3x(SYNTHESIZED_WIRE_156),
	.data4x(SYNTHESIZED_WIRE_157),
	.data5x(SYNTHESIZED_WIRE_158),
	.data6x(SYNTHESIZED_WIRE_159),
	.data7x(SYNTHESIZED_WIRE_160),
	.data8x(SYNTHESIZED_WIRE_161),
	.data9x(SYNTHESIZED_WIRE_162),
	.sel(RA),
	.result(OUTA));


lpm_mux0	b2v_inst66(
	.data0x(SYNTHESIZED_WIRE_131),
	.data10x(SYNTHESIZED_WIRE_132),
	.data11x(SYNTHESIZED_WIRE_133),
	.data12x(SYNTHESIZED_WIRE_134),
	.data13x(SYNTHESIZED_WIRE_135),
	.data14x(SYNTHESIZED_WIRE_136),
	.data15x(SYNTHESIZED_WIRE_137),
	.data16x(SYNTHESIZED_WIRE_138),
	.data17x(SYNTHESIZED_WIRE_139),
	.data18x(SYNTHESIZED_WIRE_140),
	.data19x(SYNTHESIZED_WIRE_141),
	.data1x(SYNTHESIZED_WIRE_142),
	.data20x(SYNTHESIZED_WIRE_143),
	.data21x(SYNTHESIZED_WIRE_144),
	.data22x(SYNTHESIZED_WIRE_145),
	.data23x(SYNTHESIZED_WIRE_146),
	.data24x(SYNTHESIZED_WIRE_147),
	.data25x(SYNTHESIZED_WIRE_148),
	.data26x(SYNTHESIZED_WIRE_149),
	.data27x(SYNTHESIZED_WIRE_150),
	.data28x(SYNTHESIZED_WIRE_151),
	.data29x(SYNTHESIZED_WIRE_152),
	.data2x(SYNTHESIZED_WIRE_153),
	.data30x(SYNTHESIZED_WIRE_154),
	.data31x(SYNTHESIZED_WIRE_155),
	.data3x(SYNTHESIZED_WIRE_156),
	.data4x(SYNTHESIZED_WIRE_157),
	.data5x(SYNTHESIZED_WIRE_158),
	.data6x(SYNTHESIZED_WIRE_159),
	.data7x(SYNTHESIZED_WIRE_160),
	.data8x(SYNTHESIZED_WIRE_161),
	.data9x(SYNTHESIZED_WIRE_162),
	.sel(RB),
	.result(OUTB));


lpm_mux_r0	b2v_inst67(
	.sel(SYNTHESIZED_WIRE_125),
	.data0x(SYNTHESIZED_WIRE_126),
	.data1x(SYNTHESIZED_WIRE_127),
	.result(SYNTHESIZED_WIRE_131));




register	b2v_inst7(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_128),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_160));
	defparam	b2v_inst7.WIDTH = 32;


register	b2v_inst8(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_129),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_161));
	defparam	b2v_inst8.WIDTH = 32;


register	b2v_inst9(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_130),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_162));
	defparam	b2v_inst9.WIDTH = 32;


endmodule
