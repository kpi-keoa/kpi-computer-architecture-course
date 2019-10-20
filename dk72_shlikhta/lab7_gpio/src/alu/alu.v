`timescale 1ns/1ps

`include "/home/drcah4ec/mips_core/alu/defines.v"

module alu(op_a, op_b, alu_opsel, ovf_flag, cf_flag, zero_flag, alu_result);
//REGISTERS AND WIRES DESCRIPTION

input [`REG_WIDTH-1:0] op_a;
input [`REG_WIDTH-1:0] op_b;
input [`ALU_OPSEL_WIDTH-1:0] alu_opsel;

output reg ovf_flag = 0, zero_flag = 0, cf_flag = 0;
output reg [`REG_WIDTH-1:0] alu_result = 0;

wire [`REG_WIDTH-1:0] shift_res, logic_res, arithm_res;
wire arithm_ovf, arithm_cf;

	
//EXTERNALS MODULES
	
shift shifter_0(alu_opsel[`SHIFT_DIAP], op_b[`SHIFT_SA_DIAP], op_a[`REG_WIDTH-1:0], shift_res[`REG_WIDTH-1:0]);

arithm arithm_0(op_a[`REG_WIDTH-1:0], op_b[`REG_WIDTH-1:0], alu_opsel[`ARITHM_DIAP], arithm_res[`REG_WIDTH-1:0], arithm_ovf, arithm_cf);

logic logic_0(op_a[`REG_WIDTH-1:0], op_b[`REG_WIDTH-1:0], alu_opsel[`LOGIC_DIAP], logic_res[`REG_WIDTH-1:0]);

//MAIN BLOCK
always @* begin
	
	casez(alu_opsel[`ALU_OP_DIAP])
	
		`SHIFT: begin
			alu_result = shift_res;
			ovf_flag = 0;
			cf_flag = 0;
		end
		
		`ARITHM: begin
			alu_result = arithm_res;
			ovf_flag = arithm_ovf;
			cf_flag = arithm_cf;
		end
		
		`LOGIC: begin
			alu_result = logic_res;
			ovf_flag = 0;
			cf_flag = 0;
		end
		
		default: begin
			alu_result = 0;
			ovf_flag = 0;
			cf_flag = 0;
		end
	endcase
	
	zero_flag = ~| alu_result;
end
endmodule
