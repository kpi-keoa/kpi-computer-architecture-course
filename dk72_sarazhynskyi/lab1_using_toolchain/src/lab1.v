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
// CREATED		"Tue Oct  1 21:58:04 2019"
`timescale 1ns/1ps
module lab1(
	arstn,
	clk,
	we,
	srstn,
	idata,
	dataout
);


input wire	arstn;
input wire	clk;
input wire	we;
input wire	srstn;
input wire	[31:0] idata;
output wire	[31:0] dataout;

wire	[31:0] data;
reg	[31:0] dataout_ALTERA_SYNTHESIZED;
wire	[0:31] SYNTHESIZED_WIRE_0;
wire	[31:0] SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_0 = 0;




always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[31] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[31] <= data[31];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[30] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[30] <= data[30];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[21] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[21] <= data[21];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[20] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[20] <= data[20];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[19] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[19] <= data[19];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[18] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[18] <= data[18];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[17] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[17] <= data[17];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[16] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[16] <= data[16];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[15] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[15] <= data[15];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[14] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[14] <= data[14];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[13] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[13] <= data[13];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[12] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[12] <= data[12];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[29] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[29] <= data[29];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[11] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[11] <= data[11];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[10] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[10] <= data[10];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[9] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[9] <= data[9];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[8] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[8] <= data[8];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[7] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[7] <= data[7];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[6] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[6] <= data[6];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[5] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[5] <= data[5];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[4] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[4] <= data[4];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[3] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[3] <= data[3];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[2] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[2] <= data[2];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[28] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[28] <= data[28];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[1] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[1] <= data[1];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[0] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[0] <= data[0];
	end
end


lpm_mux0	b2v_inst32(
	.sel(we),
	.data0x(dataout_ALTERA_SYNTHESIZED),
	.data1x(idata),
	.result(SYNTHESIZED_WIRE_1));


lpm_mux0	b2v_inst33(
	.sel(srstn),
	.data0x(SYNTHESIZED_WIRE_0),
	.data1x(SYNTHESIZED_WIRE_1),
	.result(data));



always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[27] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[27] <= data[27];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[26] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[26] <= data[26];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[25] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[25] <= data[25];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[24] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[24] <= data[24];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[23] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[23] <= data[23];
	end
end


always@(posedge clk or negedge arstn)
begin
if (!arstn)
	begin
	dataout_ALTERA_SYNTHESIZED[22] <= 0;
	end
else
	begin
	dataout_ALTERA_SYNTHESIZED[22] <= data[22];
	end
end

assign	dataout = dataout_ALTERA_SYNTHESIZED;

endmodule
