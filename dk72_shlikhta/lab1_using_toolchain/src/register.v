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
// CREATED		"Tue Sep 10 02:30:06 2019"

module register(
	AS_RST,
	S_RST,
	CLK,
	WE,
	D,
	dout
);


input wire	AS_RST;
input wire	S_RST;
input wire	CLK;
input wire	WE;
input wire	[31:0] D;
output wire	[31:0] dout;

wire	[31:0] din;
reg	[31:0] dout_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_8;
wire	[31:0] SYNTHESIZED_WIRE_9;
wire	[0:31] SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_35 = 1;
assign	SYNTHESIZED_WIRE_10 = 0;




always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[0] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[0] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[0] <= din[0];
	end
end



always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[1] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[1] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[1] <= din[1];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[3] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[3] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[3] <= din[3];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[2] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[2] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[2] <= din[2];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[4] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[4] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[4] <= din[4];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[5] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[5] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[5] <= din[5];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[6] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[6] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[6] <= din[6];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[7] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[7] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[7] <= din[7];
	end
end


lpm_mux0	b2v_inst5(
	.sel(SYNTHESIZED_WIRE_8),
	.data0x(SYNTHESIZED_WIRE_9),
	.data1x(SYNTHESIZED_WIRE_10),
	.result(din));


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[9] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[9] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[9] <= din[9];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[8] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[8] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[8] <= din[8];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[10] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[10] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[10] <= din[10];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[11] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[11] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[11] <= din[11];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[12] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[12] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[12] <= din[12];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[13] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[13] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[13] <= din[13];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[14] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[14] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[14] <= din[14];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[15] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[15] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[15] <= din[15];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[16] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[16] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[16] <= din[16];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[17] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[17] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[17] <= din[17];
	end
end


lpm_mux0	b2v_inst6(
	.sel(WE),
	.data0x(dout_ALTERA_SYNTHESIZED),
	.data1x(D),
	.result(SYNTHESIZED_WIRE_9));


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[18] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[18] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[18] <= din[18];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[19] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[19] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[19] <= din[19];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[20] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[20] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[20] <= din[20];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[21] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[21] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[21] <= din[21];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[22] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[22] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[22] <= din[22];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[23] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[23] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[23] <= din[23];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[24] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[24] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[24] <= din[24];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[25] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[25] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[25] <= din[25];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[26] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[26] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[26] <= din[26];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[27] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[27] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[27] <= din[27];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[28] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[28] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[28] <= din[28];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[29] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[29] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[29] <= din[29];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[30] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[30] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[30] <= din[30];
	end
end


always@(posedge CLK or negedge AS_RST or negedge SYNTHESIZED_WIRE_35)
begin
if (!AS_RST)
	begin
	dout_ALTERA_SYNTHESIZED[31] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout_ALTERA_SYNTHESIZED[31] <= 1;
	end
else
	begin
	dout_ALTERA_SYNTHESIZED[31] <= din[31];
	end
end


assign	SYNTHESIZED_WIRE_8 =  ~S_RST;

assign	dout = dout_ALTERA_SYNTHESIZED;

endmodule
