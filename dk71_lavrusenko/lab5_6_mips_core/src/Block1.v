
`timescale 1ns/1ps
module Block1(
	arst,
	clk,
	ovrflow
);


input wire	arst;
input wire	clk;
output wire	ovrflow;

wire	[31:0] control_mem;
wire	[31:0] d_out;
wire	[31:0] data;
wire	[31:0] extender_j_out;
wire	[31:0] in_A;
wire	[31:0] in_B;
wire	[31:0] instr_out;
wire	[5:0] o_alu_control;
wire	[9:0] o_control_sig;
wire	[4:0] o_shift_contr;
wire	[31:0] out;
wire	[31:0] result;
wire	[31:0] result_pc;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	[31:0] SYNTHESIZED_WIRE_153;
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
wire	[31:0] SYNTHESIZED_WIRE_41;
wire	[31:0] SYNTHESIZED_WIRE_42;
wire	[31:0] SYNTHESIZED_WIRE_43;
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
wire	SYNTHESIZED_WIRE_61;
wire	SYNTHESIZED_WIRE_62;
wire	SYNTHESIZED_WIRE_63;
wire	SYNTHESIZED_WIRE_64;
wire	SYNTHESIZED_WIRE_65;
wire	SYNTHESIZED_WIRE_66;
wire	SYNTHESIZED_WIRE_67;
wire	SYNTHESIZED_WIRE_68;
wire	SYNTHESIZED_WIRE_69;
wire	SYNTHESIZED_WIRE_70;
wire	[4:0] SYNTHESIZED_WIRE_71;
wire	[31:0] SYNTHESIZED_WIRE_154;
wire	[31:0] SYNTHESIZED_WIRE_155;
wire	[31:0] SYNTHESIZED_WIRE_156;
wire	[31:0] SYNTHESIZED_WIRE_157;
wire	[31:0] SYNTHESIZED_WIRE_158;
wire	[31:0] SYNTHESIZED_WIRE_159;
wire	[31:0] SYNTHESIZED_WIRE_160;
wire	[31:0] SYNTHESIZED_WIRE_161;
wire	[31:0] SYNTHESIZED_WIRE_162;
wire	[31:0] SYNTHESIZED_WIRE_163;
wire	[31:0] SYNTHESIZED_WIRE_164;
wire	[31:0] SYNTHESIZED_WIRE_165;
wire	[31:0] SYNTHESIZED_WIRE_166;
wire	[31:0] SYNTHESIZED_WIRE_167;
wire	[31:0] SYNTHESIZED_WIRE_168;
wire	[31:0] SYNTHESIZED_WIRE_169;
wire	[31:0] SYNTHESIZED_WIRE_170;
wire	[31:0] SYNTHESIZED_WIRE_171;
wire	[31:0] SYNTHESIZED_WIRE_172;
wire	[31:0] SYNTHESIZED_WIRE_173;
wire	[31:0] SYNTHESIZED_WIRE_174;
wire	[31:0] SYNTHESIZED_WIRE_175;
wire	[31:0] SYNTHESIZED_WIRE_176;
wire	[31:0] SYNTHESIZED_WIRE_177;
wire	[31:0] SYNTHESIZED_WIRE_178;
wire	[31:0] SYNTHESIZED_WIRE_179;
wire	[31:0] SYNTHESIZED_WIRE_180;
wire	[31:0] SYNTHESIZED_WIRE_181;
wire	[31:0] SYNTHESIZED_WIRE_182;
wire	[31:0] SYNTHESIZED_WIRE_183;
wire	[31:0] SYNTHESIZED_WIRE_184;
wire	[31:0] SYNTHESIZED_WIRE_185;
wire	SYNTHESIZED_WIRE_136;
wire	[0:31] SYNTHESIZED_WIRE_137;
wire	[31:0] SYNTHESIZED_WIRE_138;
wire	SYNTHESIZED_WIRE_139;
wire	[31:0] SYNTHESIZED_WIRE_140;
wire	[31:0] SYNTHESIZED_WIRE_141;
wire	[31:0] SYNTHESIZED_WIRE_143;
wire	SYNTHESIZED_WIRE_144;
wire	[31:0] SYNTHESIZED_WIRE_145;
wire	SYNTHESIZED_WIRE_146;
wire	SYNTHESIZED_WIRE_186;
wire	SYNTHESIZED_WIRE_148;
wire	SYNTHESIZED_WIRE_149;
wire	SYNTHESIZED_WIRE_151;
wire	[31:0] SYNTHESIZED_WIRE_152;

assign	SYNTHESIZED_WIRE_136 = 0;
assign	SYNTHESIZED_WIRE_137 = 0;




control_unit	b2v_inst(
	.i_amount(instr_out[10:6]),
	.i_funct(instr_out[5:0]),
	.i_op(instr_out[31:26]),
	.o_alu_control(o_alu_control),
	.o_control_sig(o_control_sig),
	.o_shift_contr(o_shift_contr));

assign	SYNTHESIZED_WIRE_151 =  ~o_alu_control[0];

assign	SYNTHESIZED_WIRE_186 = SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_1 & SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_3;


data_memory	b2v_inst100(
	.write_enable(o_control_sig[1]),
	.clk(clk),
	.address(result),
	.data_in(SYNTHESIZED_WIRE_153),
	.data_out(SYNTHESIZED_WIRE_141));


instruction_memory	b2v_inst101(
	.addr(d_out),
	.instr_out(instr_out));

assign	SYNTHESIZED_WIRE_1 = ~(result[10] | result[9] | result[11] | result[13] | result[12] | result[14] | result[8] | result[15]);

assign	SYNTHESIZED_WIRE_2 = ~(result[18] | result[17] | result[19] | result[21] | result[20] | result[22] | result[16] | result[23]);

assign	SYNTHESIZED_WIRE_3 = ~(result[26] | result[25] | result[27] | result[29] | result[28] | result[30] | result[24] | result[31]);


register	b2v_inst14(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_5),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_138));
	defparam	b2v_inst14.WIDTH = 32;


register	b2v_inst15(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_6),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_179));
	defparam	b2v_inst15.WIDTH = 32;


register	b2v_inst16(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_7),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_180));
	defparam	b2v_inst16.WIDTH = 32;


register	b2v_inst17(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_8),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_181));
	defparam	b2v_inst17.WIDTH = 32;


register	b2v_inst18(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_9),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_182));
	defparam	b2v_inst18.WIDTH = 32;


register	b2v_inst19(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_10),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_183));
	defparam	b2v_inst19.WIDTH = 32;


lab3_barrel_shifter	b2v_inst2(
	.bs_opsel(o_alu_control[2:0]),
	.data_in(in_A),
	.shift_amount(o_shift_contr),
	.result(SYNTHESIZED_WIRE_43));


register	b2v_inst20(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_11),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_184));
	defparam	b2v_inst20.WIDTH = 32;


register	b2v_inst21(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_12),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_185));
	defparam	b2v_inst21.WIDTH = 32;


register	b2v_inst22(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_13),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_155));
	defparam	b2v_inst22.WIDTH = 32;


register	b2v_inst23(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_14),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_156));
	defparam	b2v_inst23.WIDTH = 32;


register	b2v_inst24(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_15),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_157));
	defparam	b2v_inst24.WIDTH = 32;


register	b2v_inst25(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_16),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_158));
	defparam	b2v_inst25.WIDTH = 32;


register	b2v_inst26(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_17),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_159));
	defparam	b2v_inst26.WIDTH = 32;


register	b2v_inst27(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_18),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_160));
	defparam	b2v_inst27.WIDTH = 32;


register	b2v_inst28(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_19),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_161));
	defparam	b2v_inst28.WIDTH = 32;


register	b2v_inst29(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_20),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_162));
	defparam	b2v_inst29.WIDTH = 32;


logic	b2v_inst3(
	.in_A(in_A),
	.in_B(in_B),
	.in_opt(o_alu_control[1:0]),
	.out(SYNTHESIZED_WIRE_42));
	defparam	b2v_inst3.WIDTH = 32;


register	b2v_inst30(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_21),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_163));
	defparam	b2v_inst30.WIDTH = 32;


register	b2v_inst31(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_22),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_164));
	defparam	b2v_inst31.WIDTH = 32;


register	b2v_inst32(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_23),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_166));
	defparam	b2v_inst32.WIDTH = 32;


register	b2v_inst33(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_24),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_167));
	defparam	b2v_inst33.WIDTH = 32;


register	b2v_inst34(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_25),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_168));
	defparam	b2v_inst34.WIDTH = 32;


register	b2v_inst35(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_26),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_169));
	defparam	b2v_inst35.WIDTH = 32;


register	b2v_inst36(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_27),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_170));
	defparam	b2v_inst36.WIDTH = 32;


register	b2v_inst37(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_28),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_171));
	defparam	b2v_inst37.WIDTH = 32;


register	b2v_inst38(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_29),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_172));
	defparam	b2v_inst38.WIDTH = 32;


register	b2v_inst39(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_30),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_173));
	defparam	b2v_inst39.WIDTH = 32;


mul_div	b2v_inst4(
	.in_A(in_A),
	.in_B(in_B),
	.in_opt(o_alu_control[1:0]),
	.out(SYNTHESIZED_WIRE_41));
	defparam	b2v_inst4.WIDTH = 32;


register	b2v_inst40(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_31),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_174));
	defparam	b2v_inst40.WIDTH = 32;


register	b2v_inst41(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_32),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_175));
	defparam	b2v_inst41.WIDTH = 32;


register	b2v_inst42(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_33),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_177));
	defparam	b2v_inst42.WIDTH = 32;


register	b2v_inst43(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_34),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_178));
	defparam	b2v_inst43.WIDTH = 32;

assign	SYNTHESIZED_WIRE_34 = o_control_sig[8] & SYNTHESIZED_WIRE_35;

assign	SYNTHESIZED_WIRE_33 = o_control_sig[8] & SYNTHESIZED_WIRE_36;

assign	SYNTHESIZED_WIRE_32 = o_control_sig[8] & SYNTHESIZED_WIRE_37;

assign	SYNTHESIZED_WIRE_31 = o_control_sig[8] & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_30 = o_control_sig[8] & SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_29 = o_control_sig[8] & SYNTHESIZED_WIRE_40;


mux_choice	b2v_inst5(
	.data0x(SYNTHESIZED_WIRE_41),
	.data1x(SYNTHESIZED_WIRE_42),
	.data2x(SYNTHESIZED_WIRE_43),
	.data3x(out),
	.sel(o_alu_control[4:3]),
	.result(result));

assign	SYNTHESIZED_WIRE_28 = o_control_sig[8] & SYNTHESIZED_WIRE_44;

assign	SYNTHESIZED_WIRE_27 = o_control_sig[8] & SYNTHESIZED_WIRE_45;

assign	SYNTHESIZED_WIRE_26 = o_control_sig[8] & SYNTHESIZED_WIRE_46;

assign	SYNTHESIZED_WIRE_25 = o_control_sig[8] & SYNTHESIZED_WIRE_47;

assign	SYNTHESIZED_WIRE_24 = o_control_sig[8] & SYNTHESIZED_WIRE_48;

assign	SYNTHESIZED_WIRE_23 = o_control_sig[8] & SYNTHESIZED_WIRE_49;

assign	SYNTHESIZED_WIRE_22 = o_control_sig[8] & SYNTHESIZED_WIRE_50;

assign	SYNTHESIZED_WIRE_21 = o_control_sig[8] & SYNTHESIZED_WIRE_51;

assign	SYNTHESIZED_WIRE_20 = o_control_sig[8] & SYNTHESIZED_WIRE_52;

assign	SYNTHESIZED_WIRE_19 = o_control_sig[8] & SYNTHESIZED_WIRE_53;

assign	SYNTHESIZED_WIRE_18 = o_control_sig[8] & SYNTHESIZED_WIRE_54;

assign	SYNTHESIZED_WIRE_17 = o_control_sig[8] & SYNTHESIZED_WIRE_55;

assign	SYNTHESIZED_WIRE_16 = o_control_sig[8] & SYNTHESIZED_WIRE_56;

assign	SYNTHESIZED_WIRE_15 = o_control_sig[8] & SYNTHESIZED_WIRE_57;

assign	SYNTHESIZED_WIRE_14 = o_control_sig[8] & SYNTHESIZED_WIRE_58;

assign	SYNTHESIZED_WIRE_13 = o_control_sig[8] & SYNTHESIZED_WIRE_59;

assign	SYNTHESIZED_WIRE_12 = o_control_sig[8] & SYNTHESIZED_WIRE_60;

assign	SYNTHESIZED_WIRE_11 = o_control_sig[8] & SYNTHESIZED_WIRE_61;

assign	SYNTHESIZED_WIRE_10 = o_control_sig[8] & SYNTHESIZED_WIRE_62;

assign	SYNTHESIZED_WIRE_9 = o_control_sig[8] & SYNTHESIZED_WIRE_63;


register	b2v_inst7(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_64),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_165));
	defparam	b2v_inst7.WIDTH = 32;

assign	SYNTHESIZED_WIRE_8 = o_control_sig[8] & SYNTHESIZED_WIRE_65;

assign	SYNTHESIZED_WIRE_7 = o_control_sig[8] & SYNTHESIZED_WIRE_66;

assign	SYNTHESIZED_WIRE_6 = o_control_sig[8] & SYNTHESIZED_WIRE_67;

assign	SYNTHESIZED_WIRE_139 = o_control_sig[8] & SYNTHESIZED_WIRE_68;

assign	SYNTHESIZED_WIRE_64 = o_control_sig[8] & SYNTHESIZED_WIRE_69;

assign	SYNTHESIZED_WIRE_5 = o_control_sig[8] & SYNTHESIZED_WIRE_70;


lpn_decode0	b2v_inst76(
	.data(SYNTHESIZED_WIRE_71),
	.eq0(SYNTHESIZED_WIRE_70),
	.eq1(SYNTHESIZED_WIRE_69),
	.eq2(SYNTHESIZED_WIRE_68),
	.eq3(SYNTHESIZED_WIRE_67),
	.eq4(SYNTHESIZED_WIRE_66),
	.eq5(SYNTHESIZED_WIRE_65),
	.eq6(SYNTHESIZED_WIRE_63),
	.eq7(SYNTHESIZED_WIRE_62),
	.eq8(SYNTHESIZED_WIRE_61),
	.eq9(SYNTHESIZED_WIRE_60),
	.eq10(SYNTHESIZED_WIRE_59),
	.eq11(SYNTHESIZED_WIRE_58),
	.eq12(SYNTHESIZED_WIRE_57),
	.eq13(SYNTHESIZED_WIRE_56),
	.eq14(SYNTHESIZED_WIRE_55),
	.eq15(SYNTHESIZED_WIRE_54),
	.eq16(SYNTHESIZED_WIRE_53),
	.eq17(SYNTHESIZED_WIRE_52),
	.eq18(SYNTHESIZED_WIRE_51),
	.eq19(SYNTHESIZED_WIRE_50),
	.eq20(SYNTHESIZED_WIRE_49),
	.eq21(SYNTHESIZED_WIRE_48),
	.eq22(SYNTHESIZED_WIRE_47),
	.eq23(SYNTHESIZED_WIRE_46),
	.eq24(SYNTHESIZED_WIRE_45),
	.eq25(SYNTHESIZED_WIRE_44),
	.eq26(SYNTHESIZED_WIRE_40),
	.eq27(SYNTHESIZED_WIRE_39),
	.eq28(SYNTHESIZED_WIRE_38),
	.eq29(SYNTHESIZED_WIRE_37),
	.eq30(SYNTHESIZED_WIRE_36),
	.eq31(SYNTHESIZED_WIRE_35));


lpm_mux0	b2v_inst77(
	.data0x(SYNTHESIZED_WIRE_154),
	.data10x(SYNTHESIZED_WIRE_155),
	.data11x(SYNTHESIZED_WIRE_156),
	.data12x(SYNTHESIZED_WIRE_157),
	.data13x(SYNTHESIZED_WIRE_158),
	.data14x(SYNTHESIZED_WIRE_159),
	.data15x(SYNTHESIZED_WIRE_160),
	.data16x(SYNTHESIZED_WIRE_161),
	.data17x(SYNTHESIZED_WIRE_162),
	.data18x(SYNTHESIZED_WIRE_163),
	.data19x(SYNTHESIZED_WIRE_164),
	.data1x(SYNTHESIZED_WIRE_165),
	.data20x(SYNTHESIZED_WIRE_166),
	.data21x(SYNTHESIZED_WIRE_167),
	.data22x(SYNTHESIZED_WIRE_168),
	.data23x(SYNTHESIZED_WIRE_169),
	.data24x(SYNTHESIZED_WIRE_170),
	.data25x(SYNTHESIZED_WIRE_171),
	.data26x(SYNTHESIZED_WIRE_172),
	.data27x(SYNTHESIZED_WIRE_173),
	.data28x(SYNTHESIZED_WIRE_174),
	.data29x(SYNTHESIZED_WIRE_175),
	.data2x(SYNTHESIZED_WIRE_176),
	.data30x(SYNTHESIZED_WIRE_177),
	.data31x(SYNTHESIZED_WIRE_178),
	.data3x(SYNTHESIZED_WIRE_179),
	.data4x(SYNTHESIZED_WIRE_180),
	.data5x(SYNTHESIZED_WIRE_181),
	.data6x(SYNTHESIZED_WIRE_182),
	.data7x(SYNTHESIZED_WIRE_183),
	.data8x(SYNTHESIZED_WIRE_184),
	.data9x(SYNTHESIZED_WIRE_185),
	.sel(instr_out[25:21]),
	.result(in_A));


lpm_mux0	b2v_inst78(
	.data0x(SYNTHESIZED_WIRE_154),
	.data10x(SYNTHESIZED_WIRE_155),
	.data11x(SYNTHESIZED_WIRE_156),
	.data12x(SYNTHESIZED_WIRE_157),
	.data13x(SYNTHESIZED_WIRE_158),
	.data14x(SYNTHESIZED_WIRE_159),
	.data15x(SYNTHESIZED_WIRE_160),
	.data16x(SYNTHESIZED_WIRE_161),
	.data17x(SYNTHESIZED_WIRE_162),
	.data18x(SYNTHESIZED_WIRE_163),
	.data19x(SYNTHESIZED_WIRE_164),
	.data1x(SYNTHESIZED_WIRE_165),
	.data20x(SYNTHESIZED_WIRE_166),
	.data21x(SYNTHESIZED_WIRE_167),
	.data22x(SYNTHESIZED_WIRE_168),
	.data23x(SYNTHESIZED_WIRE_169),
	.data24x(SYNTHESIZED_WIRE_170),
	.data25x(SYNTHESIZED_WIRE_171),
	.data26x(SYNTHESIZED_WIRE_172),
	.data27x(SYNTHESIZED_WIRE_173),
	.data28x(SYNTHESIZED_WIRE_174),
	.data29x(SYNTHESIZED_WIRE_175),
	.data2x(SYNTHESIZED_WIRE_176),
	.data30x(SYNTHESIZED_WIRE_177),
	.data31x(SYNTHESIZED_WIRE_178),
	.data3x(SYNTHESIZED_WIRE_179),
	.data4x(SYNTHESIZED_WIRE_180),
	.data5x(SYNTHESIZED_WIRE_181),
	.data6x(SYNTHESIZED_WIRE_182),
	.data7x(SYNTHESIZED_WIRE_183),
	.data8x(SYNTHESIZED_WIRE_184),
	.data9x(SYNTHESIZED_WIRE_185),
	.sel(instr_out[20:16]),
	.result(SYNTHESIZED_WIRE_153));


lpm_mux_r0	b2v_inst79(
	.sel(SYNTHESIZED_WIRE_136),
	.data0x(SYNTHESIZED_WIRE_137),
	.data1x(SYNTHESIZED_WIRE_138),
	.result(SYNTHESIZED_WIRE_154));


register	b2v_inst8(
	.i_clk(clk),
	.i_arstn(arst),
	.i_we(SYNTHESIZED_WIRE_139),
	.i_d(data),
	.o_q(SYNTHESIZED_WIRE_176));
	defparam	b2v_inst8.WIDTH = 32;




extender	b2v_inst82(
	.ext_op(o_control_sig[7]),
	.imm16(instr_out[15:0]),
	.d_out(SYNTHESIZED_WIRE_143));


pc	b2v_inst83(
	.clk(clk),
	.arst_n(arst),
	.d_in(SYNTHESIZED_WIRE_140),
	.d_out(d_out));


adder_pc	b2v_inst84(
	.datab(d_out),
	.result(result_pc));


mux_2	b2v_inst85(
	.sel(o_control_sig[0]),
	.data0x(result),
	.data1x(SYNTHESIZED_WIRE_141),
	.result(data));


mux_2	b2v_inst86(
	.sel(o_control_sig[6]),
	.data0x(SYNTHESIZED_WIRE_153),
	.data1x(SYNTHESIZED_WIRE_143),
	.result(in_B));


mux_2_5	b2v_inst87(
	.sel(o_control_sig[9]),
	.data0x(instr_out[20:16]),
	.data1x(instr_out[15:11]),
	.result(SYNTHESIZED_WIRE_71));


mux_2	b2v_inst88(
	.sel(SYNTHESIZED_WIRE_144),
	.data0x(result_pc),
	.data1x(control_mem),
	.result(SYNTHESIZED_WIRE_140));


extender_next_pc	b2v_inst89(
	.imm16(instr_out[15:0]),
	.d_out(SYNTHESIZED_WIRE_152));

assign	SYNTHESIZED_WIRE_0 = ~(result[2] | result[1] | result[3] | result[5] | result[4] | result[6] | result[0] | result[7]);


mux_2	b2v_inst90(
	.sel(o_control_sig[5]),
	.data0x(SYNTHESIZED_WIRE_145),
	.data1x(extender_j_out),
	.result(control_mem));


extender_j	b2v_inst91(
	.imm26(instr_out[25:0]),
	.d_out(extender_j_out));

assign	SYNTHESIZED_WIRE_149 = SYNTHESIZED_WIRE_146 & o_control_sig[3];

assign	SYNTHESIZED_WIRE_148 = SYNTHESIZED_WIRE_186 & o_control_sig[4];

assign	SYNTHESIZED_WIRE_144 = o_control_sig[5] | SYNTHESIZED_WIRE_148 | SYNTHESIZED_WIRE_149;

assign	SYNTHESIZED_WIRE_146 =  ~SYNTHESIZED_WIRE_186;


add_mega	b2v_inst96(
	.add_sub(SYNTHESIZED_WIRE_151),
	.dataa(in_A),
	.datab(in_B),
	.overflow(ovrflow),
	.result(out));


add_j	b2v_inst98(
	.dataa(result_pc),
	.datab(SYNTHESIZED_WIRE_152),
	.result(SYNTHESIZED_WIRE_145));


endmodule
