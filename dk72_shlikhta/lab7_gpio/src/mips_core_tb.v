`timescale 1ns/1ps

module mips_core_tb();

reg clk_sig;
reg arst_n_sig;
wire [17:13] SW_sig;
wire [3:1] KEY_sig;

wire [2:0] LEDG_sig;
wire [6:0] instr_sig;
wire [6:0] HEX0_sig;
wire [6:0] HEX1_sig;
wire [6:0] HEX2_sig;
wire [2:0] LEDR_sig;

reg [7:0] temp;

assign SW_sig = temp[4:0];
assign KEY_sig = temp[7:5];

mips_core mips_core_inst
(
	.clk(clk_sig),	// input  clk_sig
	.arst_n(arst_n_sig),	// input  arst_n_sig
	.LEDG(LEDG_sig),
	.instr(instr_sig),
	.SW(SW_sig),
	.HEX0(HEX0_sig),
	.HEX1(HEX1_sig),
	.HEX2(HEX2_sig),
	.LEDR(LEDR_sig),
	.KEY(KEY_sig)
);

initial begin
	clk_sig = 0;
	forever #4 clk_sig = ~clk_sig;
end

initial begin
	arst_n_sig = 0;
	#3 arst_n_sig = 1;
	temp = 8'b00110010;
	#50000;
	temp = 8'b11001000;
	#50000;
	temp = 8'b01111111;
end

initial begin
	#150000 $stop();
end

endmodule

