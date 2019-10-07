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
// CREATED		"Sun Oct 07 23:43:13 2019"

`timescale 1 ns / 1 ps

module lab1(
	arstn,
	we,
	clk,
	srstn,
	data,
	q
);


input wire	arstn;
input wire	we;
input wire	clk;
input wire	srstn;
input wire	[31:0] data;
output wire	[31:0] q;

wire	[31:0] Din;
reg	[31:0] Dout;
wire	SYNTHESIZED_WIRE_0;
wire	[31:0] SYNTHESIZED_WIRE_1;
wire	[0:31] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_34;

assign	SYNTHESIZED_WIRE_2 = 0;
assign	SYNTHESIZED_WIRE_34 = 1;




lpm_mux0	b2v_inst(
	.sel(we),
	.data0x(Dout),
	.data1x(data),
	.result(SYNTHESIZED_WIRE_1));


lpm_mux0	b2v_inst1(
	.sel(SYNTHESIZED_WIRE_0),
	.data0x(SYNTHESIZED_WIRE_1),
	.data1x(SYNTHESIZED_WIRE_2),
	.result(Din));


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[8] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[8] <= 1;
	end
else
	begin
	Dout[8] <= Din[8];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[9] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[9] <= 1;
	end
else
	begin
	Dout[9] <= Din[9];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[10] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[10] <= 1;
	end
else
	begin
	Dout[10] <= Din[10];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[11] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[11] <= 1;
	end
else
	begin
	Dout[11] <= Din[11];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[12] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[12] <= 1;
	end
else
	begin
	Dout[12] <= Din[12];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[13] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[13] <= 1;
	end
else
	begin
	Dout[13] <= Din[13];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[14] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[14] <= 1;
	end
else
	begin
	Dout[14] <= Din[14];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	Dout[15] <= 0;
	end
else
	begin
	Dout[15] <= Din[15];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[16] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[16] <= 1;
	end
else
	begin
	Dout[16] <= Din[16];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[17] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[17] <= 1;
	end
else
	begin
	Dout[17] <= Din[17];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[0] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[0] <= 1;
	end
else
	begin
	Dout[0] <= Din[0];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[18] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[18] <= 1;
	end
else
	begin
	Dout[18] <= Din[18];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[19] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[19] <= 1;
	end
else
	begin
	Dout[19] <= Din[19];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[20] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[20] <= 1;
	end
else
	begin
	Dout[20] <= Din[20];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[21] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[21] <= 1;
	end
else
	begin
	Dout[21] <= Din[21];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[22] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[22] <= 1;
	end
else
	begin
	Dout[22] <= Din[22];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[23] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[23] <= 1;
	end
else
	begin
	Dout[23] <= Din[23];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[24] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[24] <= 1;
	end
else
	begin
	Dout[24] <= Din[24];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[25] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[25] <= 1;
	end
else
	begin
	Dout[25] <= Din[25];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[26] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[26] <= 1;
	end
else
	begin
	Dout[26] <= Din[26];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[1] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[1] <= 1;
	end
else
	begin
	Dout[1] <= Din[1];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[27] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[27] <= 1;
	end
else
	begin
	Dout[27] <= Din[27];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[28] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[28] <= 1;
	end
else
	begin
	Dout[28] <= Din[28];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[29] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[29] <= 1;
	end
else
	begin
	Dout[29] <= Din[29];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[30] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[30] <= 1;
	end
else
	begin
	Dout[30] <= Din[30];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[31] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[31] <= 1;
	end
else
	begin
	Dout[31] <= Din[31];
	end
end

assign	SYNTHESIZED_WIRE_0 =  ~srstn;




always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[2] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[2] <= 1;
	end
else
	begin
	Dout[2] <= Din[2];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[3] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[3] <= 1;
	end
else
	begin
	Dout[3] <= Din[3];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[4] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[4] <= 1;
	end
else
	begin
	Dout[4] <= Din[4];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[5] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[5] <= 1;
	end
else
	begin
	Dout[5] <= Din[5];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[6] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[6] <= 1;
	end
else
	begin
	Dout[6] <= Din[6];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	Dout[7] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Dout[7] <= 1;
	end
else
	begin
	Dout[7] <= Din[7];
	end
end

assign	q = Dout;

endmodule

