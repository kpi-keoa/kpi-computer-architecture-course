`timescale 1ns/1ps

module muldiv(input logic [31:0] in_A, in_B, 
				  input logic [1:0] in_choice, 
				  output logic [31:0] o_out);

logic [31:0] mul_1,mul_2;
logic [31:0] div_result,balance;
assign {mul_1,mul_2} = in_A * in_B;// ідея належить Тимофію Ходнєву
assign div_result = in_A / in_B;
assign balance = in_A % in_B;

always_comb 
begin
  casez (in_choice)
		2'b00:   o_out = mul_1;
		2'b10:   o_out = mul_2;
		2'b01:   o_out = div_result;
		2'b11:   o_out = balance;
		default: o_out = {32{1'bz}};
  endcase
end

endmodule
