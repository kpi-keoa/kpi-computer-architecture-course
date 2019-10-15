`timescale 1ns/1ps
/* Some code parts used here, was taken from Nazar Volynko realisation */
module mul_div #(parameter WIDTH = 32) (
input  [WIDTH-1:0] in_A, in_B,
input  [1:0] in_opt, 
output reg [WIDTH-1:0] out); 

wire [WIDTH*2-1:0] mulO;
wire [WIDTH:0] divO, res;
assign mulO = in_A * in_B;
assign divO = in_A / in_B;
assign res = in_A % in_B;

always @(*) begin
	casez(in_opt)
		2'b00: out = mulO[WIDTH-1:0];
		2'b10: out = mulO[WIDTH*2-1:WIDTH];
		2'b01: out = divO;
		2'b11: out = res;
		default: out ={WIDTH{1'bz}};
	endcase
end
endmodule
