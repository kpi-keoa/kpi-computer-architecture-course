//SOME ELEMENTS TAKEN FROM Oleh Matiusha

`timescale 1ns/1ps

module mips #(parameter WIDTH = 32)(input CLOCK_27, input [3:0] KEY, output [9:0] LEDR);


wire clk, arstn, regfile_we, dmem_we, of, zf, ctl_regdst, ctl_extop, ctl_alusrc, ctl_j, ctl_beq, ctl_bne, ctl_memtoreg;
assign clk = CLOCK_27;
assign arstn = KEY[0];
assign LEDR = {8'b0, of, zf};
wire [WIDTH-1:0] pc_out, pc_in, instr_out, op_a, op_b, reg_w, dmem_in, dmem_addr, dmem_out, alu_out, signext_out, reg_b, next_pc;


wire [4:0] rs, rd, rt, shamt, reg_dst, alu_func;
wire [5:0] opcode, func;
wire [15:0] imm16;
wire [25:0] imm26;

assign {opcode, rs, rt, rd, shamt, func} = instr_out;
assign imm16 = instr_out[15:0];
assign imm26 = instr_out[25:0];


register #(WIDTH) pc(clk, 1'b1, pc_in, pc_out, arstn); //PC

imem #(WIDTH*2) instr_mem({2'b0,pc_out[31:2]}, instr_out);//byte aligned


assign reg_dst = (ctl_regdst) ? rt : rd;
regfile #(WIDTH,WIDTH) register_file(clk, regfile_we, arstn, rs, rt, reg_dst, reg_w, op_a, reg_b); 

sign_ext sign_extender(imm16, signext_out,ctl_extop );

assign op_b = (ctl_alusrc) ? signext_out : reg_b; 
lab4_alu alu(op_a, op_b, alu_func, alu_out, of, zf, shamt);

data_mem #(WIDTH) data_memory(clk, dmem_we, alu_out, reg_b, dmem_out);
assign reg_w = (ctl_memtoreg) ? dmem_out : alu_out;

next_pc nextpc(pc_out, imm26, ctl_beq, ctl_bne, ctl_j, zf, pc_in);


alu_control alucontrol(opcode, func, alu_func);

main_control mc(opcode, ctl_regdst, regfile_we, ctl_extop, ctl_alusrc, ctl_j, ctl_beq, ctl_bne, dmem_we, ctl_memtoreg);

endmodule
