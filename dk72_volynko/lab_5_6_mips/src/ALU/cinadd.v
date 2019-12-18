`timescale 1ns/1ps

module cinadd #(parameter WIDTH = 32)(input [WIDTH-1:0] opA, input [WIDTH-1:0] opB, input addsub, output reg [WIDTH-1:0] result, output reg overflow);
    
reg [WIDTH-1:0] temp;
reg [WIDTH+1:0] addsub_result;

always @* begin
	temp = opB ^ {WIDTH{addsub}};
end

always @* begin
  addsub_result = {opA, addsub} + {temp, addsub};
  result = addsub_result[WIDTH:1];
  overflow = ((opA[WIDTH] ^ result[WIDTH]) & (temp[WIDTH] ^ result[WIDTH]))^result[WIDTH];//signed ovf
end

endmodule
