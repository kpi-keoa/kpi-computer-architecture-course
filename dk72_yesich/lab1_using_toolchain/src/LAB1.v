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
// CREATED		"Tue Sep 10 02:53:58 2019"
`timescale 1ns/1ps

module LAB1(
	we,
	srstn,
	clk,
	arstn,
	dat,
	dout
);


input wire	we;
input wire	srstn;
input wire	clk;
input wire	arstn;
input wire	[31:0] dat;
output wire	[31:0] dout;

wire	[31:0] in;
reg	[31:0] odat;
wire	SYNTHESIZED_WIRE_34;
wire	[0:31] SYNTHESIZED_WIRE_27;
wire	[31:0] SYNTHESIZED_WIRE_28;

assign	SYNTHESIZED_WIRE_34 = 1;
assign	SYNTHESIZED_WIRE_27 = 0;




always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[0] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[0] <= 1;
	end
else
	begin
	odat[0] <= in[0];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[11] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[11] <= 1;
	end
else
	begin
	odat[11] <= in[11];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[4] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[4] <= 1;
	end
else
	begin
	odat[4] <= in[4];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[5] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[5] <= 1;
	end
else
	begin
	odat[5] <= in[5];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[12] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[12] <= 1;
	end
else
	begin
	odat[12] <= in[12];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[13] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[13] <= 1;
	end
else
	begin
	odat[13] <= in[13];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[8] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[8] <= 1;
	end
else
	begin
	odat[8] <= in[8];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[9] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[9] <= 1;
	end
else
	begin
	odat[9] <= in[9];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[14] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[14] <= 1;
	end
else
	begin
	odat[14] <= in[14];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[15] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[15] <= 1;
	end
else
	begin
	odat[15] <= in[15];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[16] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[16] <= 1;
	end
else
	begin
	odat[16] <= in[16];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[1] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[1] <= 1;
	end
else
	begin
	odat[1] <= in[1];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[17] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[17] <= 1;
	end
else
	begin
	odat[17] <= in[17];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[18] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[18] <= 1;
	end
else
	begin
	odat[18] <= in[18];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[19] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[19] <= 1;
	end
else
	begin
	odat[19] <= in[19];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[20] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[20] <= 1;
	end
else
	begin
	odat[20] <= in[20];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[21] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[21] <= 1;
	end
else
	begin
	odat[21] <= in[21];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[22] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[22] <= 1;
	end
else
	begin
	odat[22] <= in[22];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[23] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[23] <= 1;
	end
else
	begin
	odat[23] <= in[23];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[24] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[24] <= 1;
	end
else
	begin
	odat[24] <= in[24];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[25] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[25] <= 1;
	end
else
	begin
	odat[25] <= in[25];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[26] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[26] <= 1;
	end
else
	begin
	odat[26] <= in[26];
	end
end



always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[27] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[27] <= 1;
	end
else
	begin
	odat[27] <= in[27];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[28] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[28] <= 1;
	end
else
	begin
	odat[28] <= in[28];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[29] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[29] <= 1;
	end
else
	begin
	odat[29] <= in[29];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[30] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[30] <= 1;
	end
else
	begin
	odat[30] <= in[30];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[31] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[31] <= 1;
	end
else
	begin
	odat[31] <= in[31];
	end
end


lpm_mux0	b2v_inst35(
	.sel(we),
	.data0x(odat),
	.data1x(dat),
	.result(SYNTHESIZED_WIRE_28));


lpm_mux0	b2v_inst36(
	.sel(srstn),
	.data0x(SYNTHESIZED_WIRE_27),
	.data1x(SYNTHESIZED_WIRE_28),
	.result(in));



always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[2] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[2] <= 1;
	end
else
	begin
	odat[2] <= in[2];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[3] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[3] <= 1;
	end
else
	begin
	odat[3] <= in[3];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[6] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[6] <= 1;
	end
else
	begin
	odat[6] <= in[6];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[7] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[7] <= 1;
	end
else
	begin
	odat[7] <= in[7];
	end
end


always@(posedge clk or negedge arstn or negedge SYNTHESIZED_WIRE_34)
begin
if (!arstn)
	begin
	odat[10] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	odat[10] <= 1;
	end
else
	begin
	odat[10] <= in[10];
	end
end

assign	dout = odat;

endmodule
