// Generated by Quartus II 64-Bit Version 13.0 (Build Build 232 06/12/2013)
// Created on Tue Sep 10 03:29:27 2019
`timescale 1ns/1ps
module register_tb;

parameter WIDTH = 32;

reg i_clk_sig;
reg i_arstn_sig;
reg i_we_sig;
reg i_rstn_sig;
reg [WIDTH-1:0] i_d_sig;
wire [WIDTH-1:0] o_q_sig;

register_ver register_ver_inst
(
	.i_clk(i_clk_sig) ,	// input  i_clk_sig
	.i_arstn(i_arstn_sig) ,	// input  i_arstn_sig
	.i_rstn(i_rstn_sig) ,	// input  i_rstn_sig
	.i_we(i_we_sig) ,	// input  i_we_sig
	.i_d(i_d_sig) ,	// input [WIDTH-1:0] i_d_sig
	.o_q(o_q_sig) 	// output [WIDTH-1:0] o_q_sig
);

defparam register_ver_inst.WIDTH = 32;

initial begin
	i_clk_sig = 1'b0;
	forever #2 i_clk_sig = ~i_clk_sig;
end


initial begin
	i_arstn_sig = 1'b1;
	i_rstn_sig = 1'b1;
	i_we_sig = 1'b1;

	#3 i_arstn_sig = ~i_arstn_sig;
	#2 i_arstn_sig = ~i_arstn_sig;

	#50 i_rstn_sig = ~i_rstn_sig;
	#10 i_rstn_sig = ~i_rstn_sig;

end

initial begin 
	i_d_sig = 32'h12345678;
	#20 i_d_sig = 32'habcdef00;
	#60 i_d_sig = 32'hdeadbeef;
end

initial begin
	#100 $stop();
end


endmodule
