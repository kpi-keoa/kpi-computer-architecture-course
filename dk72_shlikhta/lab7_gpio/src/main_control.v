`timescale 1ns/1ps

`include "/home/drcah4ec/lab7_gpio/mips_core/asm_table.v"

module main_control(op, reg_dst, reg_write, ext_op, 
		 alu_src, mem_write, mem_to_reg, beq, bne, j);

input wire [5:0] op;

output  reg_dst, reg_write, ext_op, alu_src;
output  beq, bne, j, mem_write, mem_to_reg;

wire r_type, sw, lw, andi, ori, xori;

assign r_type = ~| op;
assign sw = op == `SW;
assign lw = op == `LW;
assign beq = op == `BEQ;
assign j = op == `J;
assign bne = op == `BNE;
assign andi = op == `AND;
assign xori = op == `OR;
assign ori = op == `XOR;

assign reg_dst = r_type;
assign mem_to_reg = lw;
assign mem_write = sw;
assign alu_src = ~(r_type | beq | bne);
assign reg_write = ~(sw | beq | j | bne);
assign ext_op = ~(andi | ori | xori);

endmodule
