
// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Mon Oct 14 14:49:58 2019"
`timescale 1ns/1ps
module Block1(
	in_A,
	in_B,
	in_func,
	in_opt,
	zero,
	ovrflow,
	result
);


input wire	[31:0] in_A;
input wire	[31:0] in_B;
input wire	[1:0] in_func;
input wire	[4:0] in_opt;
output wire	zero;
output wire	ovrflow;
output wire	[31:0] result;

wire	[31:0] out;
wire	[31:0] result_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	[31:0] SYNTHESIZED_WIRE_4;
wire	[31:0] SYNTHESIZED_WIRE_5;
wire	[31:0] SYNTHESIZED_WIRE_6;





add_sub	b2v_inst(
	.in_opt(in_opt[0]),
	.in_A(in_A),
	.in_B(in_B),
	.ovrflow(ovrflow),
	.out(out));
	defparam	b2v_inst.WIDTH = 32;

assign	zero = SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_1 & SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_1 = ~(result_ALTERA_SYNTHESIZED[10] | result_ALTERA_SYNTHESIZED[9] | result_ALTERA_SYNTHESIZED[11] | result_ALTERA_SYNTHESIZED[13] | result_ALTERA_SYNTHESIZED[12] | result_ALTERA_SYNTHESIZED[14] | result_ALTERA_SYNTHESIZED[8] | result_ALTERA_SYNTHESIZED[15]);

assign	SYNTHESIZED_WIRE_2 = ~(result_ALTERA_SYNTHESIZED[18] | result_ALTERA_SYNTHESIZED[17] | result_ALTERA_SYNTHESIZED[19] | result_ALTERA_SYNTHESIZED[21] | result_ALTERA_SYNTHESIZED[20] | result_ALTERA_SYNTHESIZED[22] | result_ALTERA_SYNTHESIZED[16] | result_ALTERA_SYNTHESIZED[23]);

assign	SYNTHESIZED_WIRE_3 = ~(result_ALTERA_SYNTHESIZED[26] | result_ALTERA_SYNTHESIZED[25] | result_ALTERA_SYNTHESIZED[27] | result_ALTERA_SYNTHESIZED[29] | result_ALTERA_SYNTHESIZED[28] | result_ALTERA_SYNTHESIZED[30] | result_ALTERA_SYNTHESIZED[24] | result_ALTERA_SYNTHESIZED[31]);


lab3_barrel_shifter	b2v_inst2(
	.bs_opsel(in_opt[2:0]),
	.data_in(in_A),
	.shift_amount(in_B[4:0]),
	.result(SYNTHESIZED_WIRE_6));


logic	b2v_inst3(
	.in_A(in_A),
	.in_B(in_B),
	.in_opt(in_opt[1:0]),
	.out(SYNTHESIZED_WIRE_5));
	defparam	b2v_inst3.WIDTH = 32;


mul_div	b2v_inst4(
	.in_A(in_A),
	.in_B(in_B),
	.in_opt(in_opt[1:0]),
	.out(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst4.WIDTH = 32;


mux_choice	b2v_inst5(
	.data0x(SYNTHESIZED_WIRE_4),
	.data1x(SYNTHESIZED_WIRE_5),
	.data2x(SYNTHESIZED_WIRE_6),
	.data3x(out),
	.sel(in_func),
	.result(result_ALTERA_SYNTHESIZED));

assign	SYNTHESIZED_WIRE_0 = ~(result_ALTERA_SYNTHESIZED[2] | result_ALTERA_SYNTHESIZED[1] | result_ALTERA_SYNTHESIZED[3] | result_ALTERA_SYNTHESIZED[5] | result_ALTERA_SYNTHESIZED[4] | result_ALTERA_SYNTHESIZED[6] | result_ALTERA_SYNTHESIZED[0] | result_ALTERA_SYNTHESIZED[7]);

assign	result = result_ALTERA_SYNTHESIZED;

endmodule
