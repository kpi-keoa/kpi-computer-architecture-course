`timescale 1ns/1ps

module mips_core_tb();

reg CLOCK_27;
wire [17:13] SW_sig;
reg [0:0] KEY_sig;

wire [5:0] LEDG_sig;
wire [6:0] instr_sig;
wire [6:0] HEX0_sig;
wire [6:0] HEX1_sig;
wire [6:0] HEX2_sig;
wire [2:0] LEDR_sig;

reg [4:0] temp;

assign SW_sig = temp[4:0];

mips_core mips_core_inst
(
	.CLOCK_27(CLOCK_27),	// input  CLOCK_27
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
	CLOCK_27 = 0;
	forever #4 CLOCK_27 = ~CLOCK_27;
end

initial begin
	KEY_sig[0] = 0;
	#10 KEY_sig[0] = 1;
	temp = 5'b00001;
	#2500 $stop();
end

endmodule
