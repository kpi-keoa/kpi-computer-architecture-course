`timescale 1ns/1ps
`include"functions.v"

module alu_ctrl(op,funk,alu_ctrl_out);

input [5:0] op;
input [5:0] funk;

output [5:0] alu_ctrl_out;

reg [5:0] war;

assign alu_ctrl_out = war;

always @(*) begin
	if(op == 5'b0) 
		war = funk;
	else
		war = op;
	casez (war)
		`LW: war = `ADD;
		`SW: war = `ADD;
		`BEQ: war = `SUB;
		`BNE: war = `SUB;
		default: war = war;
	endcase

end

endmodule
 
