`timescale 1ns/1ps

module next_pc #(parameter WIDTH = 32)(pc, imm26, beq, bne, j, z, newpc);

input [WIDTH-1:0] pc; 
input [25:0] imm26;
input beq, bne, j, z;
output wire [WIDTH-1:0] newpc;

wire [WIDTH-1:0] imm26_se, add_out;
	
assign imm26_se = ((beq & z) | (bne & !z)) ? {{14{imm26[15]}}, imm26[15:0], 2'b0} : 0;

assign add_out = pc+imm26_se+32'h4;

assign newpc = (j) ? {pc[WIDTH-1:28], imm26, 2'b0} : add_out;

endmodule
