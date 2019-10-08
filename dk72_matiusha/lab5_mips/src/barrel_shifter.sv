`timescale 1ns/1ps
module barrel_shifter (data_in, bs_opsel, shift_amount, result);

parameter REGS_WIDTH = 32;
localparam addr_width = $clog2(REGS_WIDTH);

typedef struct packed
{
  logic arith;
  logic leftright;
  logic logicrot;
} opcode_t;

input wire [REGS_WIDTH-1:0] data_in;
input opcode_t bs_opsel;
input wire [addr_width-1:0] shift_amount;
output logic [REGS_WIDTH-1:0] result;

wire sign;
assign sign = data_in[REGS_WIDTH-1] & bs_opsel.arith;

wire [REGS_WIDTH*2-1:0] left;
wire [REGS_WIDTH*2:0] right;
assign left = {data_in, data_in} << shift_amount;
assign right = $signed({sign, data_in, data_in}) >>> shift_amount;

always_comb begin
	casez(bs_opsel)
		3'b?00: result = left[0+:REGS_WIDTH];//lsl
		3'b010: result = right[REGS_WIDTH+:REGS_WIDTH]; //lsr
		3'b11?: result = right[REGS_WIDTH+:REGS_WIDTH]; //asr
		3'b011: result = right[0+:REGS_WIDTH]; //ror
		3'b?01: result = left[REGS_WIDTH+:REGS_WIDTH]; //rol
	endcase
end


endmodule









