`timescale 1ns / 1ps

module addsub(
	input [31:0] i_a,
	input [31:0] i_b,
	input i_opt,
	output reg [31:0] result,
	output reg ovfl);
    
wire [31:0] temp;				// This idea was taken
reg [33:0] var;					// from Kharchuk's Vadim	

assign temp = i_b ^ {32{i_opt}};


always @* begin

    	var = {i_a, i_opt} + {temp, i_opt};
	{ovfl, result} = var[33:1];

end
endmodule
