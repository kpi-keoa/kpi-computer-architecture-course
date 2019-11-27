`timescale 1ns/1ps 

// the module has been created with Shlihta's halp 
module next_pc(pc_src,increm,zero,j,bne,beq,pc_out,imm26);

input  [25:0] imm26;
input  [31:0] increm;
input  beq,bne,zero,j;

output [31:0] pc_out;
output pc_src;

reg [31:0] temp;
wire [31:0] Branches;

assign pc_src = j || (bne && ~zero) || (beq && zero) ; 
assign pc_out = temp;
assign Branches = {{16{imm26[15]}},imm26[15:0]};

always@(*)begin
if((bne && ~zero) || (beq && zero))begin
		temp = increm + Branches; 
	end else if(j) begin
		temp = {4'b0000,imm26[25:0]};
	end else
		temp = 32'bz;
end

endmodule

