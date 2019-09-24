`timescale 1ns/1ps

module test;

reg [31:0] in;
reg [2:0] func;
reg [4:0] shamt;
wire [31:0] out_my;
wire [31:0] out_sanya;

barrel_shifter #(.REGS_WIDTH(32)) bshift_inst (
	.data_in(in),	
	.bs_opsel(func),	
	.shift_amount(shamt),
	.result(out_my));

barrel sanya_inst (
	.data_in(in),	
	.bs_opsel(func),	
	.shift_amount(shamt),
	.result(out_sanya));

initial begin 
	in = 32'h55555555;
	func = '0;
	shamt = 5'h8;

	for (int i = 0; i < 8; i++) begin
		#10 func = 3'(i);
	end

	#10 in = 32'haaaa1234;

	for (int i = 0; i < 8; i++) begin
		#10 func = 3'(i);
	end

	#10 $stop();
end

endmodule

