`timescale 1ns/1ps

`define REG_WIDTH 32

module mips_core(CLOCK_27, LEDG, SW, LEDR, HEX0, HEX1, HEX2, KEY);

input CLOCK_27;
inout [17:13] SW;
inout [0:0] KEY;

output [6:0] HEX0;
output [6:0] HEX1;
output [6:0] HEX2;
output [5:0] LEDR;
output reg [2:0] LEDG;
//output [6:0] instr;

wire clk;
clk_div8 clk_div(CLOCK_27, clk);

wire arst_n;
assign arst_n = KEY[0];

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
wire [`REG_WIDTH-1:0] data_we;
wire [`REG_WIDTH-1:0] gpio_out;
wire [`REG_WIDTH-1:0] com_data_out;
wire [25:0] imm26;
wire [15:0] imm16;
wire [4:0] reg_write_addr;
wire [4:0] rs, rt, rd;
wire [4:0] alu_op;
wire [4:0] data_out_addr;
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

assign reg_write_addr =  reg_dst ? rd : rt;

reg_file reg_file_0(bus_w, reg_write_addr, clk, reg_write, rs, bus_a, rt, bus_b, arst_n);

assign imm26 = instruction[25:0];

assign imm16 = imm26[15:0];

extender ext_0(imm16, ext_op, ext_out);

assign alu_op_b = alu_src ? ext_out : bus_b;

alu alu_0(bus_a, alu_op_b, alu_op, ov_flag, cf_flag, zero_flag, alu_res);

data_memory data_mem_0(bus_b, mem_data_out, alu_res[6:0], data_we[0], clk);

assign bus_w = mem_to_reg ? com_data_out : alu_res;

assign next_instr = pc_src ? next_instr_jump : next_instr_norm;

next_pc next_pc_0(next_instr_norm, imm26, zero_flag, j, bne, beq, pc_src, next_instr_jump);

alu_control alu_ctrl_0(instruction[31:26], instruction[5:0], alu_op);

main_control main_ctrl_0(instruction[31:26], reg_dst, reg_write, ext_op, alu_src, mem_write,
								 mem_to_reg, beq, bne, j);

data_control data_control_0(alu_res, mem_write, data_we, data_out_addr);

bus_mux mux_0(data_out_addr, mem_data_out, gpio_out, com_data_out); //this mux will be expanded in future

gpio gpio_0(bus_b, alu_res, data_we[1], clk, arst_n, gpio_out, {LEDR[2:0], HEX2[6:0], HEX1[6:0], HEX0[6:0], LEDR[5:3], SW[17:13]});



//assign instr = instr_addr[6:0];

always @* begin
	LEDG[0] = zero_flag;
	LEDG[1] = ov_flag;
	LEDG[2] = cf_flag;

end
endmodule

