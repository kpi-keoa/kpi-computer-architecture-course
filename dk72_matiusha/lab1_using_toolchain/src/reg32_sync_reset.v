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
// CREATED		"Mon Sep  9 11:56:57 2019"

module reg32_sync_reset(
	arstn,
	srstn,
	clk,
	we,
	data,
	q
);


input wire	arstn;
input wire	srstn;
input wire	clk;
input wire	we;
input wire	[31:0] data;
output wire	[31:0] q;

wire	[31:0] din;
reg	[31:0] dout;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_1;
wire	[31:0] SYNTHESIZED_WIRE_2;
wire	[0:31] SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_35 = 1;
assign	SYNTHESIZED_WIRE_3 = 0;




always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[0] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[0] <= 1;
	end
else
	begin
	dout[0] <= din[0];
	end
end


lpm_mux0	b2v_inst1(
	.sel(we),
	.data0x(dout),
	.data1x(data),
	.result(SYNTHESIZED_WIRE_2));


lpm_mux0	b2v_inst3(
	.sel(SYNTHESIZED_WIRE_1),
	.data0x(SYNTHESIZED_WIRE_2),
	.data1x(SYNTHESIZED_WIRE_3),
	.result(din));


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[1] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[1] <= 1;
	end
else
	begin
	dout[1] <= din[1];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[3] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[3] <= 1;
	end
else
	begin
	dout[3] <= din[3];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[2] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[2] <= 1;
	end
else
	begin
	dout[2] <= din[2];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[4] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[4] <= 1;
	end
else
	begin
	dout[4] <= din[4];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[5] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[5] <= 1;
	end
else
	begin
	dout[5] <= din[5];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[6] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[6] <= 1;
	end
else
	begin
	dout[6] <= din[6];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[7] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[7] <= 1;
	end
else
	begin
	dout[7] <= din[7];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[9] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[9] <= 1;
	end
else
	begin
	dout[9] <= din[9];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[8] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[8] <= 1;
	end
else
	begin
	dout[8] <= din[8];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[10] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[10] <= 1;
	end
else
	begin
	dout[10] <= din[10];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[11] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[11] <= 1;
	end
else
	begin
	dout[11] <= din[11];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[12] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[12] <= 1;
	end
else
	begin
	dout[12] <= din[12];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[13] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[13] <= 1;
	end
else
	begin
	dout[13] <= din[13];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[14] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[14] <= 1;
	end
else
	begin
	dout[14] <= din[14];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[15] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[15] <= 1;
	end
else
	begin
	dout[15] <= din[15];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[16] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[16] <= 1;
	end
else
	begin
	dout[16] <= din[16];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[17] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[17] <= 1;
	end
else
	begin
	dout[17] <= din[17];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[18] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[18] <= 1;
	end
else
	begin
	dout[18] <= din[18];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[19] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[19] <= 1;
	end
else
	begin
	dout[19] <= din[19];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[20] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[20] <= 1;
	end
else
	begin
	dout[20] <= din[20];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[21] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[21] <= 1;
	end
else
	begin
	dout[21] <= din[21];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[22] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[22] <= 1;
	end
else
	begin
	dout[22] <= din[22];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[23] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[23] <= 1;
	end
else
	begin
	dout[23] <= din[23];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[24] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[24] <= 1;
	end
else
	begin
	dout[24] <= din[24];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[25] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[25] <= 1;
	end
else
	begin
	dout[25] <= din[25];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[26] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[26] <= 1;
	end
else
	begin
	dout[26] <= din[26];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[27] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[27] <= 1;
	end
else
	begin
	dout[27] <= din[27];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[28] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[28] <= 1;
	end
else
	begin
	dout[28] <= din[28];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[29] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[29] <= 1;
	end
else
	begin
	dout[29] <= din[29];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[30] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[30] <= 1;
	end
else
	begin
	dout[30] <= din[30];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_35)
begin
if (!arstn)
	begin
	dout[31] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_35)
	begin
	dout[31] <= 1;
	end
else
	begin
	dout[31] <= din[31];
	end
end


assign	SYNTHESIZED_WIRE_1 =  ~srstn;




assign	q = dout;

endmodule
