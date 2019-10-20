`timescale 1ns/1ps

module extender #(parameter WIDTH = 32) (
input [(WIDTH/2)-1:0] imm16,
input ExtOp, 
output reg [WIDTH-1:0] d_out
);

wire [(WIDTH/2)-1:0] extend;
wire temp;
assign temp = imm16[15] & ExtOp;
assign extend = {16{temp}};

always @* begin
	d_out = {extend,imm16};
end
endmodule
