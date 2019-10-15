`timescale 1ns/1ps

`define REG_WIDTH 32

module mips_core(CLOCK_27, arst_n, LEDR, instr);

input CLOCK_27;
input arst_n;

output reg [2:0] LEDR;
output [6:0] instr;

wire clk = CLOCK_27;

wire [`REG_WIDTH-1:0] instr_addr;
wire [`REG_WIDTH-1:0] next_instr;
wire [`REG_WIDTH-1:0] instruction;
wire [`REG_WIDTH-1:0] bus_w;
wire [`REG_WIDTH-1:0] bus_a;
wire [`REG_WIDTH-1:0] bus_b;
wire [`REG_WIDTH-1:0] alu_res;
wire [`REG_WIDTH-1:0] alu_op_b;
wire [`REG_WIDTH-1:0] ext_out;
wire [`REG_WIDTH-1:0] mem_data_out;
wire [`REG_WIDTH-1:0] next_instr_norm;
wire [`REG_WIDTH-1:0] next_instr_jump;
wire [25:0] imm26;
wire [15:0] imm16;
wire [4:0] reg_write_addr;
wire [4:0] rs, rt, rd;
wire [4:0] alu_op;
wire reg_dst;
wire reg_write;
wire alu_src ;
wire ext_op;
wire ov_flag, cf_flag, zero_flag;
wire mem_write;
wire mem_to_reg;
wire j, bne, beq;
wire pc_src;

assign rs = instruction[25:21];
assign rt = instruction[20:16];
assign rd = instruction[15:11];

incrementer inc_0(instr_addr, next_instr_norm);

prog_counter pc_0(next_instr, instr_addr, clk, arst_n);

instruction_memory instr_mem_0(instr_addr, instruction);

addr_mux addr_mux_0(reg_dst, rt, rd, reg_write_addr);

reg_file reg_file_0(bus_w, reg_write_addr, clk, reg_write, rs, bus_a, rt, bus_b);

assign imm26 = instruction[25:0];

assign imm16 = imm26[15:0];

extender ext_0(imm16, ext_op, ext_out);

mux mux_0(alu_src, bus_b, ext_out, alu_op_b);

alu alu_0(bus_a, alu_op_b, alu_op, ov_flag, cf_flag, zero_flag, alu_res);

data_memory data_mem_0(bus_b, mem_data_out, alu_res[6:0], mem_write, clk);

mux mux_1(mem_to_reg, alu_res, mem_data_out, bus_w);

mux mux_2(pc_src, next_instr_norm, next_instr_jump, next_instr);

next_pc next_pc_0(next_instr_norm, imm26, zero_flag, j, bne, beq, pc_src, next_instr_jump);

alu_control alu_ctrl_0(instruction[31:26], instruction[5:0], alu_op);

main_control main_ctrl_0(instruction[31:26], reg_dst, reg_write, ext_op, alu_src, mem_write,
								 mem_to_reg, beq, bne, j);

assign instr = instr_addr[6:0];

always @* begin
	LEDR[0] = zero_flag;
	LEDR[1] = ov_flag;
	LEDR[2] = cf_flag;

end
endmodule
