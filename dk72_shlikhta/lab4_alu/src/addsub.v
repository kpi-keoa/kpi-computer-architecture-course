`timescale 1ns/1ps
`include "/home/drcah4ec/lab4_alu/defines.v"

module addsub(op_a, op_b, addsub, addsub_result, ovf, cf);

input [`REG_WIDTH-1:0] op_a;
input [`REG_WIDTH-1:0] op_b;
input addsub;

output reg [`REG_WIDTH-1:0] addsub_result;
output reg ovf = 0;
output reg cf = 0;

wire [`REG_WIDTH-1:0] temp;

assign temp = op_b ^ {`REG_WIDTH{addsub}};

always @* begin
  
	{cf, addsub_result} = op_a + temp | addsub;
	ovf = (temp[`REG_WIDTH-1] ^ op_a[`REG_WIDTH-1]) ^ cf;
	
end
endmodule
