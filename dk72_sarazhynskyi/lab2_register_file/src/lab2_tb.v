`timescale 1ns/1ps

module test;

reg clk_sig;
reg we_sig;
reg arstn_sig;
reg [4:0] waddr_sig, readaddrA_sig, readaddrB_sig;
reg [31:0] data_sig;
wire [31:0] dataA_sig, dataB_sig;

lab2 lab2_inst
(
	.we(we_sig) ,	// input  we_sig
	.data(data_sig) ,	// input [31:0] data_sig
	.waddr(waddr_sig) ,	// input [4:0] waddr_sig
	.readaddrA(readaddrA_sig) ,	// input [4:0] readaddrA_sig
	.readaddrB(readaddrB_sig) ,	// input [4:0] readaddrB_sig
	.arstn(arstn_sig) ,	// input  arstn_sig
	.clk(clk_sig) ,	// input  clk_sig
	.dataA(dataA_sig) ,	// output [31:0] dataA_sig
	.dataB(dataB_sig) 	// output [31:0] dataB_sig
);

initial begin
	clk_sig=1'b0;
	forever #1 clk_sig=~clk_sig;
end

initial begin 
	arstn_sig=1'b1;
	#2 arstn_sig=1'b0;
	#2 arstn_sig=1'b1;

end

initial begin 

	we_sig=1'b0;
	waddr_sig = 5'b00000;
	readaddrA_sig=5'b00000;
	readaddrB_sig=5'b00000;
	data_sig=32'h55555555;
	#8 we_sig=1'b1;
	#2 we_sig=1'b0;

	repeat(32) begin
		#4 data_sig= data_sig + 1;
		readaddrA_sig = readaddrA_sig + 1;
		readaddrB_sig = readaddrB_sig + 1;
		waddr_sig = waddr_sig + 1;
		#2 we_sig=1'b1;
		#2 we_sig=1'b0;
	end
	
end

initial begin 
	#400 $stop();
end

endmodule


