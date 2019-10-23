`timescale 1ns/1ps

`include "/home/drcah4ec/mips_core/alu/defines.v"

`define ALU_ADDSUB 3'b00?
`define ALU_MUL_L 3'b010
`define ALU_MUL_H 3'b011
`define ALU_DIV 3'b100
`define ALU_REM 3'b101

module arithm(op_a, op_b, arithm_opsel, result, ovf, cf);

input [2:0] arithm_opsel;
input [`REG_WIDTH-1:0] op_a;
input [`REG_WIDTH-1:0] op_b;

output reg [`REG_WIDTH-1:0] result;
output reg ovf = 0;
output reg cf = 0;

wire [`REG_WIDTH-1:0] op_b_inv;
wire [`REG_WIDTH+1:0] addsub_temp;
wire signed [`REG_WIDTH*2-1:0] mul_temp;
wire signed [`REG_WIDTH-1:0] div_temp;

assign op_b_inv = op_b ^ {`REG_WIDTH{arithm_opsel[0]}};
assign addsub_temp = {op_a, arithm_opsel[0]} + {op_b_inv, arithm_opsel[0]};
assign mul_temp = op_a * op_b;
assign div_temp = op_a / op_b;

always @* begin

	casez(arithm_opsel)
		`ALU_ADDSUB: begin
			{cf, result} = addsub_temp[`REG_WIDTH+1:1];
			ovf = (op_b_inv[`REG_WIDTH-1] ^ op_a[`REG_WIDTH-1]) ^ cf;
		end
		`ALU_MUL_L: begin
			result = mul_temp[`REG_WIDTH-1:0];
			cf = 0;
			ovf = 0;
		end
		`ALU_MUL_H: begin
			result = mul_temp[`REG_WIDTH*2-1:`REG_WIDTH];
			cf = 0;
			ovf = 0;
		end
		`ALU_DIV: begin
			result = div_temp;
			cf = 0;
			ovf = 0;
		end
		`ALU_REM: begin
			result = op_a % op_b;
			cf = 0;
			ovf = 0;
		end
		default: begin
			result = 0;
			cf = 0;
			ovf = 0;
		end
	endcase

end
endmodule
