`define REG_WIDTH 32

module next_pc(inc_pc, imm26, zero, j, bne, beq, pcsrc, new_pc);

input wire [`REG_WIDTH-1:0] inc_pc;
input wire [25:0] imm26;
input wire zero, j, bne, beq;

output reg [`REG_WIDTH-1:0] new_pc;
output wire pcsrc;

wire [`REG_WIDTH-1:0] sign_extencion;
wire [`REG_WIDTH-1:0] mux_in_0;
wire [`REG_WIDTH-1:0] mux_in_1;

assign sign_extencion = {{16{imm26[15]}}, imm26[15:0]};
assign mux_in_0 = inc_pc + sign_extencion;
assign mux_in_1 = {inc_pc[`REG_WIDTH-1:26], imm26};

assign pcsrc = j || (beq & zero) || (~zero & bne);

always @* begin
	if(j) new_pc = mux_in_1;
	else new_pc = mux_in_0;
end
endmodule
