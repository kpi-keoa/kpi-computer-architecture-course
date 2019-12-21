`timescale 1ns/1ps

module addsub #(parameter N = 32) (
				input logic [N-1:0] a,b,
				input logic add_sub ,
				output logic [N-1:0] o_result,
				output logic overflow);
logic [N-1:0] b2;

assign b2 = add_sub ? ~b : b ;

always @*
begin

o_result = (a + b2 + add_sub); 

overflow = ((a[31] ^ o_result[31]) & (b2[31] ^ o_result[31]))^ o_result[31];

end


endmodule


