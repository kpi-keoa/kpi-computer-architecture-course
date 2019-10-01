`timescale 1ns/1ps

module muldiv(input [31:0] in_A, in_B, input [1:0] check, output reg [31:0] out);

wire [63:0] mulout;
wire [31:0] divout, res;
assign mulout = in_A * in_B;
assign divout = in_A / in_B;
assign res = in_A % in_B;

always @* begin
  casez (check)
		2'b00:   out = mulout[31:0];
		2'b10:   out = mulout[63:32];
		2'b01:   out = divout;
		2'b11:   out = res;
		default: out = {32{1'bz}};
  endcase
end

endmodule

