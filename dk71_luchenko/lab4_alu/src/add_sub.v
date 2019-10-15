`timescale 1ns/1ps
module add_sub #(parameter WIDTH = 32) (
  input [WIDTH-1:0] in_A,
  input [WIDTH-1:0] in_B,
  input in_opt,
  output reg[WIDTH-1:0] out,
  output reg ovrfl);
    
wire [WIDTH-1:0] temp;
reg [WIDTH+1:0] temp1;

assign temp = in_B ^ {WIDTH{in_opt}};


always @* begin
    temp1 = {in_A, in_opt} + {temp, in_opt};
	 {ovrfl, out} = temp1[WIDTH+1:1];
end
endmodule

