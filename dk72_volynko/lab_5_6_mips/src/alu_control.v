`timescale 1ns/1ps

module alu_control (opcode, funct, aluctl);

input [5:0] opcode, funct;
output reg [4:0] aluctl;

always @(opcode, funct) begin
	casez (opcode)
		6'b000000: begin 
			case (funct)
				6'b100000: aluctl = 5'b10110;//add
				6'b100010: aluctl = 5'b10111;//sub
				6'b100001: aluctl = 5'b10000;//mull = addu
				6'b100011: aluctl = 5'b10010;//mulh = subu
				6'b101011: aluctl = 5'b10001;//div = sltu
				6'b100100: aluctl = 5'b11000;//and
				6'b100101: aluctl = 5'b11001;//or
				6'b100110: aluctl = 5'b11011;//xor
				6'b100111: aluctl = 5'b11010;//nor
				6'b000000: aluctl = 5'b00000;//sll
				6'b000100: aluctl = 5'b00000;//sllv
				6'b000010: aluctl = 5'b00010;//srl
				6'b000110: aluctl = 5'b00010;//srlv
				6'b000111: aluctl = 5'b00111;//srav
				6'b000011: aluctl = 5'b00111;//sra
				6'b101010: aluctl = 5'b11111;//slt
				default : aluctl = 5'bz;/* default */
			endcase
		end
		6'b001000: aluctl = 5'b10110; //addi
		6'b001001: aluctl = 5'b10000;//mulli = addiu
		6'b001011: aluctl = 5'b10001;//divi = sltiu
		6'b001100: aluctl = 5'b11000;//andi
		6'b001101: aluctl = 5'b11001;//ori
		6'b001110: aluctl = 5'b11011;//xori
		6'b100011: aluctl = 5'b10110;//lw
		6'b101011: aluctl = 5'b10110;//sw
		6'b001010: aluctl = 5'b11111;//slti
		6'b000010: aluctl = 5'b10110;//j
		6'b000100: aluctl = 5'b10110;//beq
		6'b000101: aluctl = 5'b10110;//bne
		default : aluctl = 5'bz;/* default */
	endcase
end

endmodule
