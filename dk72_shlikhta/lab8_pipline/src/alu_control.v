`timescale 1ns/1ps

`include "/home/drcah4ec/lab8_pipeline_mips_core/pipepline_mips/src/asm_table.v"

module alu_control(op, func, alu_ctrl);
input wire [5:0] op;
input wire [5:0] func;

output reg [4:0] alu_ctrl;

always @* begin

	if(op != 0) begin
		if(op == `LW || op == `SW) alu_ctrl <= `ADD;
		else alu_ctrl <= op[4:0];
	end
	else alu_ctrl <= func[4:0];

end
endmodule
