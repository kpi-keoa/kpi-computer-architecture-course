`timescale 1ns/1ps

module sub_add #(parameter N = 32) (input logic [N-1:0] in_a,in_b,
				input logic add_sub ,
				output logic [N-1:0] o_result,
				output logic overflow);
logic [N-1:0] b2;
logic [N+1:0] sum;

assign b2 = add_sub ? ~in_b : in_b ;

always_comb
begin

sum = {in_a, add_sub} + {b2, add_sub}; // ця штука вигадана Олегом Матюшой я хотів зробити з одним суматором але з Cin але в RLT viewer все-одно малює два суматори тому таке виходить 
o_result = sum[32:1]; 

overflow = ((in_a[31] ^ o_result[31]) & (b2[31] ^ o_result[31]))^ o_result[31];

end


endmodule


