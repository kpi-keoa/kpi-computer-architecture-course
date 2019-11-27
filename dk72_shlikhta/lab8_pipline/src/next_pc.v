`timescale 1ns/1ps

module next_pc #(parameter WIDTH = 1)(inc_pc, imm26, zero, j, bne, beq, pcsrc, new_pc);

input wire [WIDTH-1:0] inc_pc;
input wire [25:0] imm26;
input wire zero, j, bne, beq;

output [WIDTH-1:0] new_pc;
output pcsrc;

wire [WIDTH-1:0] sign_extencion;
wire [WIDTH-1:0] mux_in_0;
wire [WIDTH-1:0] mux_in_1;

assign sign_extencion = {{16{imm26[15]}}, imm26[15:0]};
assign mux_in_0 = inc_pc + sign_extencion;
assign mux_in_1 = {inc_pc[WIDTH-1:26], imm26};

assign pcsrc = j || (beq & zero) || (~zero & bne);

assign new_pc = j ? mux_in_1 : mux_in_0;

endmodule
