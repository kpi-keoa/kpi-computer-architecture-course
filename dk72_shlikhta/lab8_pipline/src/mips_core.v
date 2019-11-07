`timescale 1ns/1ps

`define REG_WIDTH 32
`define ADDR_WIDTH $clog2(`REG_WIDTH)
`define NUM_OF_REGS 32
`define VOLUME_OF_DMEMORY 128
`define VOLUME_OF_IMEMORY 128

module mips_core(CLOCK_27, LEDG, instr, SW, LEDR, HEX0, HEX1, HEX2, KEY);

input CLOCK_27;
inout [17:13] SW;
input [0:0] KEY;

output [6:0] HEX0;
output [6:0] HEX1;
output [6:0] HEX2;
output [2:0] LEDR;
output [5:0] LEDG;
output [6:0] instr;

wire clk;
assign clk = CLOCK_27;

wire arst_n;
assign arst_n = KEY[0];

wire [`REG_WIDTH-1:0] instr_addr;

wire [`REG_WIDTH-1:0] next_instr;

wire [`REG_WIDTH-1:0] instr_F;
wire [`REG_WIDTH-1:0] instr_D;

wire [`REG_WIDTH-1:0] bus_w_W;

wire [`REG_WIDTH-1:0] bus_a_D;
wire [`REG_WIDTH-1:0] bus_a_E;

wire [`REG_WIDTH-1:0] e_bus_a_D;
wire [`REG_WIDTH-1:0] e_bus_b_D;

wire [`REG_WIDTH-1:0] bus_b_D;
wire [`REG_WIDTH-1:0] bus_b_E;

wire [`REG_WIDTH-1:0] write_data_E;
wire [`REG_WIDTH-1:0] write_data_M;

wire [`REG_WIDTH-1:0] alu_res_E;
wire [`REG_WIDTH-1:0] alu_res_M;
wire [`REG_WIDTH-1:0] alu_res_W;

wire [`REG_WIDTH-1:0] alu_op_b_E;

wire [`REG_WIDTH-1:0] ext_out_D;
wire [`REG_WIDTH-1:0] ext_out_E;

wire [`REG_WIDTH-1:0] mem_data_out;

wire [`REG_WIDTH-1:0] pc_plus_1_F;
wire [`REG_WIDTH-1:0] pc_plus_1_D;

wire [`REG_WIDTH-1:0] pc_bj;
wire [`REG_WIDTH-1:0] data_we;
wire [`REG_WIDTH-1:0] gpio_out;

wire [`REG_WIDTH-1:0] com_data_out_M;
wire [`REG_WIDTH-1:0] com_data_out_W;

wire [`REG_WIDTH-1:0] src_a_E;

wire [25:0] imm26;
wire [15:0] imm16;

wire [`ADDR_WIDTH-1:0] write_reg_E;
wire [`ADDR_WIDTH-1:0] write_reg_M;
wire [`ADDR_WIDTH-1:0] write_reg_W;

wire [`ADDR_WIDTH-1:0] rs_D;
wire [`ADDR_WIDTH-1:0] rs_E;

wire [`ADDR_WIDTH-1:0] rt_D;
wire [`ADDR_WIDTH-1:0] rt_E;

wire [`ADDR_WIDTH-1:0] rd_D;
wire [`ADDR_WIDTH-1:0] rd_E;

wire [`ADDR_WIDTH-1:0] alu_op_D;
wire [`ADDR_WIDTH-1:0] alu_op_E;

wire [`ADDR_WIDTH-1:0] data_out_addr;

wire [1:0] forward_a_E;
wire [1:0] forward_b_E;

wire forward_a_D;
wire forward_b_D;

wire reg_dst_D;
wire reg_dst_E;

wire reg_write_D;
wire reg_write_E;
wire reg_write_M;
wire reg_write_W;

wire alu_src_D;
wire alu_src_E;

wire ext_op_D;
wire ov_flag, cf_flag, zero_flag;

wire mem_write_D;
wire mem_write_E;
wire mem_write_M;

wire mem_to_reg_D;
wire mem_to_reg_E;
wire mem_to_reg_M;
wire mem_to_reg_W;

wire j_D;

wire bne_D;

wire beq_D;

wire pc_src_D;

wire stall;
wire flush_E;
wire lwstall;
wire branch_stall;
wire branch_D;

//*****HAZARD UNIT
assign branch_D = beq_D || bne_D;
assign branch_stall = (branch_D && reg_write_E && (write_reg_E == rs_D || write_reg_E == rt_D)) || 
						(branch_D && mem_to_reg_M && (write_reg_M == rs_D || write_reg_M == rt_D));

assign lwstall = ((rs_D == rt_E) || (rt_D == rt_E)) && mem_to_reg_E;
assign stall = !lwstall && !branch_stall;
assign flush_E = !lwstall && !branch_stall;

assign forward_a_D = (rs_D != 0) && (rs_D == write_reg_M) && reg_write_M;
assign forward_b_D = (rt_D != 0) && (rt_D == write_reg_M) && reg_write_M;

bypass #(`ADDR_WIDTH)bypass_module(rs_E, rt_E, write_reg_M, reg_write_M, write_reg_W, reg_write_W, forward_a_E, forward_b_E);

//*****FETCH

incrementer #(`REG_WIDTH)inc_0(instr_addr, pc_plus_1_F);

prog_counter #(`REG_WIDTH)pc_0(next_instr, instr_addr, clk, arst_n, stall);

instruction_memory #(`REG_WIDTH, `VOLUME_OF_IMEMORY)instr_mem_0(instr_addr, instr_F);

assign next_instr = pc_src_D ? pc_bj : pc_plus_1_F;
//////////
	pip_reg #(`REG_WIDTH)F_reg_0(instr_F, instr_D, clk, stall, !pc_src_D, arst_n);
	pip_reg #(`REG_WIDTH)F_reg_1(pc_plus_1_F, pc_plus_1_D, clk, stall, !pc_src_D, arst_n);
//////////


//*****DECODE
wire equal_D;

assign e_bus_a_D = forward_a_D ? alu_res_M : bus_a_D;
assign e_bus_b_D = forward_b_D ? alu_res_M : bus_b_D;

assign equal_D = (e_bus_a_D == e_bus_b_D);

assign rs_D = instr_D[25:21];

assign rt_D = instr_D[20:16];

assign rd_D = instr_D[15:11];

assign imm16 = instr_D[15:0];

assign imm26 = instr_D[25:0];

alu_control alu_ctrl_0(instr_D[31:26], instr_D[5:0], alu_op_D);

main_control main_ctrl_0(instr_D[31:26], reg_dst_D, reg_write_D, ext_op_D, alu_src_D, mem_write_D, mem_to_reg_D, beq_D, bne_D, j_D);

reg_file #(`REG_WIDTH, `NUM_OF_REGS)reg_file_0(bus_w_W, write_reg_W, clk, reg_write_W, rs_D, bus_a_D, rt_D, bus_b_D, arst_n);

extender #(`REG_WIDTH)ext_0(imm16, ext_op_D, ext_out_D);

next_pc #(`REG_WIDTH)next_pc_0(pc_plus_1_D, imm26, equal_D, j_D, bne_D, beq_D, pc_src_D, pc_bj);
//////////
	pip_reg #(1)D_reg_0(reg_write_D, reg_write_E, clk, 1'b1, flush_E, arst_n);
	pip_reg #(1)D_reg_1(mem_to_reg_D, mem_to_reg_E, clk, 1'b1, flush_E, arst_n);
	pip_reg #(1)D_reg_2(mem_write_D, mem_write_E, clk, 1'b1, flush_E, arst_n);
	pip_reg #(`ADDR_WIDTH)D_reg_3(alu_op_D, alu_op_E, clk, 1'b1, flush_E, arst_n);
	pip_reg #(1)D_reg_4(reg_dst_D, reg_dst_E, clk, 1'b1, flush_E, arst_n);
	pip_reg #(`REG_WIDTH)D_reg_5(bus_a_D, bus_a_E, clk, 1'b1, flush_E, arst_n);
	pip_reg #(`REG_WIDTH)D_reg_6(bus_b_D, bus_b_E, clk, 1'b1, flush_E, arst_n);
	pip_reg #(`ADDR_WIDTH)D_reg_7(rs_D, rs_E, clk, 1'b1, flush_E, arst_n);
	pip_reg #(`ADDR_WIDTH)D_reg_8(rt_D, rt_E, clk, 1'b1, flush_E, arst_n);
	pip_reg #(`ADDR_WIDTH)D_reg_9(rd_D, rd_E, clk, 1'b1, flush_E, arst_n);
	pip_reg #(`REG_WIDTH)D_reg_10(ext_out_D, ext_out_E, clk, 1'b1, flush_E, arst_n);
	pip_reg #(1)D_reg_11(alu_src_D, alu_src_E, clk, 1'b1, flush_E, arst_n);
//////////


//*****EXECUTE

by_mux #(`REG_WIDTH)by_mux_0(bus_b_E, bus_w_W, alu_res_M, write_data_E, forward_b_E);

assign alu_op_b_E = alu_src_E ? ext_out_E : write_data_E;

by_mux #(`REG_WIDTH)by_mux_1(bus_a_E, bus_w_W, alu_res_M, src_a_E, forward_a_E);

alu alu_0(src_a_E, alu_op_b_E, alu_op_E, ov_flag, cf_flag, zero_flag, alu_res_E);

assign write_reg_E = reg_dst_E ? rd_E : rt_E;
//////////
	pip_reg #(1)E_reg_0(reg_write_E, reg_write_M, clk, 1'b1, 1'b1, arst_n);
	pip_reg #(1)E_reg_1(mem_to_reg_E, mem_to_reg_M, clk, 1'b1, 1'b1, arst_n);
	pip_reg #(1)E_reg_2(mem_write_E, mem_write_M, clk, 1'b1, 1'b1, arst_n);
	pip_reg #(`REG_WIDTH)E_reg_3(alu_res_E, alu_res_M, clk, 1'b1, 1'b1, arst_n);
	pip_reg #(`REG_WIDTH)E_reg_4(write_data_E, write_data_M, clk, 1'b1, 1'b1, arst_n);
	pip_reg #(`ADDR_WIDTH)E_reg_5(write_reg_E, write_reg_M, clk, 1'b1, 1'b1, arst_n);
//////////


//*****MEMORY ACCESS

data_control #(`REG_WIDTH)data_control_0(alu_res_M, mem_write_M, data_we, data_out_addr);

bus_mux #(`REG_WIDTH)mux_0(data_out_addr, mem_data_out, gpio_out, com_data_out_M); //this mux will be expanded in future

data_memory #(`REG_WIDTH, `VOLUME_OF_DMEMORY)data_mem_0(write_data_M, mem_data_out, alu_res_M[6:0], data_we[0], clk);

gpio #(`REG_WIDTH)gpio_0(write_data_M, alu_res_M, data_we[1], clk, arst_n, gpio_out, {LEDR[2:0], HEX2[6:0], HEX1[6:0], HEX0[6:0], LEDG[5:3], SW[17:13]});
//////////
	pip_reg #(1)M_reg_0(reg_write_M, reg_write_W, clk, 1'b1, 1'b1, arst_n);
	pip_reg #(1)M_reg_1(mem_to_reg_M, mem_to_reg_W, clk, 1'b1, 1'b1, arst_n);
	pip_reg #(`REG_WIDTH)M_reg_2(com_data_out_M, com_data_out_W, clk, 1'b1, 1'b1, arst_n);
	pip_reg #(`REG_WIDTH)M_reg_3(alu_res_M, alu_res_W, clk, 1'b1, 1'b1, arst_n);
	pip_reg #(`ADDR_WIDTH)M_reg_4(write_reg_M, write_reg_W, clk, 1'b1, 1'b1, arst_n);
//////////


//*****WRITEBACK

assign bus_w_W = mem_to_reg_W ? com_data_out_W : alu_res_W;

assign instr = instr_addr[6:0];
assign	LEDG[0] = zero_flag;
assign	LEDG[1] = ov_flag;
assign	LEDG[2] = cf_flag;

endmodule
