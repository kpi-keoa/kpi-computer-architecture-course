`timescale 1ns/1ps

`include "/home/drcah4ec/lab4_alu/defines.v"

module alu(op_a, op_b, ovf_flag, cf_flag, zero_flag_h, zero_flag_l, alu_result_l, alu_result_h, alu_opsel);
//REGISTERS AND WIRES DESCRIPTION

input [`REG_WIDTH-1:0] op_a;
input [`REG_WIDTH-1:0] op_b;
input [`ALU_OPSEL_WIDTH-1:0] alu_opsel;

output reg ovf_flag = 0, zero_flag_l = 0, cf_flag = 0, zero_flag_h = 0;
output reg [`REG_WIDTH-1:0] alu_result_l;
output reg [`REG_WIDTH-1:0] alu_result_h = 0;

wire [`REG_WIDTH-1:0] bs_res, log_res, addsub_res, mul_res_l, mul_res_h, div_res_div, div_res_rem;
wire as_ovf, as_cf;

	
//EXTERNALS MODULES
	
barrel barrel_0(alu_opsel[`BS_DIAP], op_a[`BS_SA_DIAP], op_b[`REG_WIDTH-1:0], bs_res[`REG_WIDTH-1:0]);

addsub addsub_0(op_a[`REG_WIDTH-1:0], op_b[`REG_WIDTH-1:0], alu_opsel[`ADDSUB_DIAP], addsub_res[`REG_WIDTH-1:0], as_ovf, as_cf);

mul mul_0(op_a[`REG_WIDTH-1:0], op_b[`REG_WIDTH-1:0], mul_res_h[`REG_WIDTH-1:0], mul_res_l[`REG_WIDTH-1:0]);

div div_0(op_a[`REG_WIDTH-1:0], op_b[`REG_WIDTH-1:0], div_res_div[`REG_WIDTH-1:0], div_res_rem[`REG_WIDTH-1:0]);

logic logic_0(op_a[`REG_WIDTH-1:0], op_b[`REG_WIDTH-1:0], alu_opsel[`LOGIC_DIAP], log_res[`REG_WIDTH-1:0]);

//MAIN BLOCK
always @* begin
	
	casez(alu_opsel[`ALU_OP_DIAP])
	
		`BS: begin
			alu_result_l = bs_res;
			alu_result_h = 0;
			ovf_flag = 0;
			cf_flag = 0;
		end
		
		`ADDSUB: begin
			alu_result_l = addsub_res;
			alu_result_h = 0;
			ovf_flag = as_ovf;
			cf_flag = as_cf;
		end
		
		`MUL: begin
			alu_result_l = mul_res_l;
			alu_result_h = mul_res_h;
			ovf_flag = 0;
			cf_flag = 0;
		end
		
		`DIV: begin
			alu_result_l = div_res_div;
			alu_result_h = div_res_rem;
			ovf_flag = 0;
			cf_flag = 0;
		end
		
		`LOGIC:begin
			alu_result_l = log_res;
			alu_result_h = 0;
			ovf_flag = 0;
			cf_flag = 0;
		end
		default: begin
			alu_result_h = 0;
			alu_result_l = 0;
			ovf_flag = 0;
			cf_flag = 0;
		end
	endcase
	
	zero_flag_l = ~| alu_result_l;
	zero_flag_h = ~| alu_result_h;
end
endmodule
