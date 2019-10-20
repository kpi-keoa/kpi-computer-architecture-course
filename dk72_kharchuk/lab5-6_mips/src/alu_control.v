//MODULE REALISATION TAKEN FROM Alexandr R. Shlikhta
`include "/home/morel/workspace/ComputerArchitecture/kpi-computer-architecture-course/dk72_kharchuk/lab5-6_mips/src/asm_funct.v"
module alu_control(op, func, alu_ctrl);
input wire [5:0] op;
input wire [5:0] func;
output reg [4:0] alu_ctrl;
integer temp;

always @* begin
	if(!op) temp = func;
	else temp = op;
	casez(op)
		`BEQ: temp = `SUB;
		`BNE: temp = `SUB;
		`LW: temp = `ADD;
		`SW: temp = `ADD;
		default: alu_ctrl = temp[4:0];
	endcase
		alu_ctrl = temp[4:0];
end
endmodule
