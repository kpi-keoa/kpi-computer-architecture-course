`timescale 1ns/1ps

module muldiv(input logic [31:0] a, b, 
				  input logic [1:0] in_choice, 
				  output logic [31:0] o_out);

logic [31:0] mulh,mull;
logic [31:0] div_result,rem;
assign {mulh,mull} = a * b;
assign div_result = a / b;
assign rem = a % b;

always_comb 
begin
  casez (in_choice)
		2'b00:   o_out = mulh;
		2'b10:   o_out = mull;
		2'b01:   o_out = div_result;
		2'b11:   o_out = rem;
		default: o_out = {32{1'bz}};
  endcase
end

endmodule
