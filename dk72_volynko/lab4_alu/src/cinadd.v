`timescale 1ns/1ps

module cinadd(
input [31:0] opA, input [31:0] opB, input addsub, output reg [31:0] result, output reg overflow = 0);
    
reg [31:0] temp;
reg [33:0] temp1;

always @* begin
	temp = opB ^ {32{addsub}};
end

always @* begin
  temp1 = {opA, addsub} + {temp, addsub};
  {overflow, result} = temp1[33:1];
end

endmodule

