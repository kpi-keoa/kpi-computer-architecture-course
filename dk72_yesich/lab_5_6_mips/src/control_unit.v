`timescale 1ns/1ps
`include"functions.v"

module control_unit(
	op,
	beq,
	bne,
	 j,
	 MemWrite,
	 MemtoReg, 
 	RegDst,
	 RegWr,
	 ExtOp,
	 ALUSrc

,);
input [5:0]op;
output reg beq,bne,j,MemWrite,MemtoReg;
output reg RegDst,RegWr,ExtOp,ALUSrc; 
reg [8:0]v;

always @(*) begin

casez(op)
/*
the idea of using vector 
has been advised by Matiusha Oleg
*/ 
6'b000000 : v = 9'b010000000; //R
`ADD   : v = 9'b111100000; //addi
`SUB	: v = 9'b111100000; //addi
`SLT : v = 9'b111100000;//slti
`AND   : v = 9'b110100000;//andi
`OR    : v = 9'b110100000;//ori
`XOR   : v = 9'b110100000;//xori
`LW    : v = 9'b111100001;
`SW    : v = 9'b101100010;
`J     : v = 9'b000010000;
`BEQ   : v = 9'b000001000;
`BNE   : v = 9'b000000100;
default : v = 9'bz;/* default */

endcase 

{RegDst, RegWr, ExtOp, ALUSrc, j, beq, bne, MemWrite, MemtoReg} = v;

end 

endmodule

