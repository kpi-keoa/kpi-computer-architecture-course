`timescale 1ns/1ps

module cinadd(
input [31:0] opA, input [31:0] opB, input addsub, output reg [31:0] result, output reg overflow);
    
reg [31:0] temp;
reg [33:0] addsub_result;

always @* begin
	temp = opB ^ {32{addsub}};
end

always @* begin
  addsub_result = {opA, addsub} + {temp, addsub};
  {overflow, result} = addsub_result[33:1];
end

endmodule

