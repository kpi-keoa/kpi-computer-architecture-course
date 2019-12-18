`timescale 1ns/1ps

module main_control (opcode, ctl_regdst, ctl_regwrite, ctl_extop, ctl_alusrc, ctl_j, ctl_beq, ctl_bne, ctl_memwrite, ctl_memtoreg);

input [5:0] opcode;
output ctl_regdst, ctl_regwrite, ctl_extop, ctl_alusrc, ctl_j, ctl_beq, ctl_bne, ctl_memwrite, ctl_memtoreg;

reg [8:0] ctl_vec;

always @(opcode) begin
casez(opcode)
	6'b000000: ctl_vec = 9'b011000000; //R
	6'b001000: ctl_vec = 9'b111100000; //addi
	6'b001001: ctl_vec = 9'b111100000;//mulli = addiu
	6'b001011: ctl_vec = 9'b111100000;//divi = sltiu
	6'b001100: ctl_vec = 9'b110100000;//andi
	6'b001101: ctl_vec = 9'b110100000;//ori
	6'b001110: ctl_vec = 9'b110100000;//xori
	6'b100011: ctl_vec = 9'b111100001;//lw
	6'b101011: ctl_vec = 9'b101100010;//sw
	6'b001010: ctl_vec = 9'b111100000;//slti
	6'b000010: ctl_vec = 9'b000010000;//j
	6'b000100: ctl_vec = 9'b000001000;//beq
	6'b000101: ctl_vec = 9'b000000100;//bne
	default : ctl_vec = 9'bz;/* default */
	endcase
end

assign {ctl_regdst, ctl_regwrite, ctl_extop, ctl_alusrc, ctl_j, ctl_beq, ctl_bne, ctl_memwrite, ctl_memtoreg} = ctl_vec;

endmodule
