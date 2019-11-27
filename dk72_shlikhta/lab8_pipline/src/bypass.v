`timescale 1ns/1ps

module bypass #(parameter ADDR_WIDTH = 1)(rsE, rtE, WriteRegM, RegWriteM, WriteRegW, RegWriteW, ForvardAE, ForvardBE);

input [ADDR_WIDTH-1:0] rsE;
input [ADDR_WIDTH-1:0] rtE;
input [ADDR_WIDTH-1:0] WriteRegM;
input [ADDR_WIDTH-1:0] WriteRegW;
input RegWriteM;
input RegWriteW;

output reg [1:0] ForvardAE;
output reg [1:0] ForvardBE;

always @* begin
	if((rsE != 0) && (rsE == WriteRegM) && RegWriteM)
		ForvardAE <= 2'b10;
	else if((rsE != 0) && (rsE == WriteRegW) && RegWriteW)
		ForvardAE <= 2'b01;
	else
		ForvardAE <= 2'b00;

	if((rtE != 0) && (rtE == WriteRegM) && RegWriteM)
		ForvardBE <= 2'b10;
	else if((rtE != 0) && (rtE == WriteRegW) && RegWriteW)
		ForvardBE <= 2'b01;
	else
		ForvardBE <= 2'b00;
end


endmodule
