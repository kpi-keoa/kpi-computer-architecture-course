`timescale 1ns/1ps
`define R 6'b000000
`define ADD_I 6'b001000
`define SUB_I 6'b001010
`define LW 6'b100011
`define SW 6'b101011
`define BEQ 6'b000010
`define BNE 6'b000101
`define J 6'b000001


module control_unit(i_op, i_funct, i_amount, o_control_sig, o_alu_control, o_shift_contr );

input [5:0]i_op;
input [5:0]i_funct;
input [4:0]i_amount;

output reg[9:0] o_control_sig;
output reg[5:0] o_alu_control;
output reg[4:0] o_shift_contr;




always @* begin

	casez(i_op)
		 `R : begin
			o_control_sig = 10'b1100000000;
			o_alu_control = i_funct;
			o_shift_contr = i_amount;
			end
					
		 `ADD_I : begin 
		 o_control_sig = 10'b0111000000;
		 o_alu_control = 6'b011000;
		 end
		 
		 `SUB_I : begin
		 o_control_sig = 10'b0111000000;
		 o_alu_control = 6'b011001;
		 end
		 
		 `LW : begin
		 
		 o_control_sig = 10'b0111000101;
		 o_alu_control = 6'b011000;
		 end
		 
		 `SW : begin
		 
		 o_control_sig = 10'b0011000011;
		 o_alu_control = 6'b011000;
		 end
		 
		 `BEQ : begin
		 
		 o_control_sig = 10'b1010010001;
		 o_alu_control = 6'b011001;
		 end
		 
		 `BNE : begin
		 
		 o_control_sig = 10'b1010001001;
		 o_alu_control = 6'b011001;
		 end
		 
		 `J : begin
		 
		 o_control_sig = 10'b0000100000;
		 o_alu_control = 6'b011001;
		 end
		 
		 default : begin
		 o_control_sig = 10'b0000000000;
		 o_alu_control = 6'b011001;
		 end
		 
	endcase 
	end
endmodule
	