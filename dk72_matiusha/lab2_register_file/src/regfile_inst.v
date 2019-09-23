`timescale 1ns/1ps

module test_regfile;

reg clk_sig;
reg we3_sig;
reg arstn_sig;
reg [4:0] ra1_sig, ra2_sig, wa3_sig;
reg [31:0] wd3_sig;
reg [31:0] rd1_sig, rd2_sig;

regfile #(32,32) regfile_inst 
(
	.clk(clk_sig),	
	.we(we3_sig),	
	.ra(ra1_sig),
	.rb(ra2_sig),	
	.waddr(wa3_sig),	
	.wdata(wd3_sig),	
	.rd1(rd1_sig),
	.rd2(rd2_sig),	
	.arstn(arstn_sig)
);

initial begin
	clk_sig=1'b0;
	forever #1 clk_sig=~clk_sig;
end

initial begin 
	arstn_sig=1'b1;
	#2 arstn_sig=1'b0;
	#2 arstn_sig=1'b1;

	#270 arstn_sig=1'b0;
	#4 arstn_sig=1'b1;

	for (int i = 0; i < 32; i++) begin
		#3
		ra1_sig=5'(i);
		ra2_sig=5'(i);
	end
end

initial begin 
	we3_sig=1'b0;
	wd3_sig=32'h01010101;
	wa3_sig=5'h0;
	ra1_sig=5'h0;
	ra2_sig=5'h0;
	#4

	for (int i = 0; i < 32; i++) begin
		#4 wd3_sig=32'(i) | 32'hbadb0000;
		ra1_sig=5'(i);
		ra2_sig=5'(i);
		wa3_sig=5'(i);
		#2 we3_sig=1'b1;
		#2 we3_sig=1'b0;
	end

end



initial begin 
	#400 $stop();
end

endmodule

