`include "/home/morel/workspace/ComputerArchitecture/kpi-computer-architecture-course/dk72_kharchuk/lab5-6_mips/src/asm_funct.v"

module control(op, RegDst, RegWr, ExtOp, 
		 ALUSrc, MemWrite, MemtoReg, beq, bne, j);

input wire [5:0] op;

output  RegDst, RegWr, ExtOp, ALUSrc;
output  beq, bne, j, MemWrite, MemtoReg;

wire r_type, sw, lw, andi, ori, xori;

assign r_type = ~| op;
assign sw = op == `SW;
assign lw = op == `LW;
assign beq = op == `BEQ;
assign j = op == `J;
assign bne = op == `BNE;
assign andi = op == `AND;
assign xori = op == `OR;
assign ori = op == `XOR;

assign RegDst = r_type;
assign MemtoReg = lw;
assign MemWrite = sw;
assign ALUSrc = ~(r_type | beq | bne);
assign RegWr = ~(sw | beq | j | bne);
assign ExtOp = ~(andi | ori | xori);

endmodule
