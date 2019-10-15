`timescale 1ns/1ps
module add_sub #(parameter WIDTH = 32) (
  input [WIDTH-1:0] in_A,
  input [WIDTH-1:0] in_B,
  input in_opt,
  output reg[WIDTH-1:0] out, // code take from Vadim Kharcuk
  output reg ovrflow);
    
wire [WIDTH-1:0] supplelementary;
reg [WIDTH+1:0] temp;

assign supplelementary = in_B ^ {WIDTH{in_opt}};


always @* begin
    temp = {in_A, in_opt} + {supplelementary, in_opt};
	 {ovrflow, out} = temp[WIDTH+1:1];
end

endmodule
