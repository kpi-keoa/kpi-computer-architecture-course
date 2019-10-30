`timescale 1ns/1ps

module lab4_alu(in_A, in_B, in_func, out_result, out_overflow, out_zero, shamt);

input logic  [31:0] in_A, in_B;
input logic [4:0] in_func, shamt;
output logic out_overflow;
output logic out_zero;
output logic [31:0]  out_result;

logic [31:0] result_barrel_shifter;
logic [31:0] result_addsub;
logic [31:0] result_muldiv;
logic t_ovf;

muldiv mul_h(
	.in_A(in_A), .in_B(in_B), .in_choice(in_func[1:0]), .o_out(result_muldiv)); //взяв у Назара Волинка  

sub_add subtract(
	.in_a(in_A), .in_b(in_B), .add_sub(in_func[0]), .o_result(result_addsub), .overflow(t_ovf));

lab3_barrel_shifter shift(
	.bs_opsel(in_func[2:0]), .shift_amount(shamt), .in_data(in_B), .o_result(result_barrel_shifter)); 

always @(*) begin
	 casez(in_func)
	 5'b00???: // shift
           out_result = result_barrel_shifter;
        5'b100??: // MUL or DIV
	   out_result = result_muldiv;
        5'b1011?: // ADD_SUB
		  begin
	   out_result = result_addsub;  
		end      
		5'b11000: // AND 
           out_result = in_A & in_B; 
        5'b11001: // OR 
           out_result = in_A | in_B;
        5'b11010: // NOR
           out_result = ~(in_A | in_B);
        5'b11011: // XOR
           out_result = in_A ^ in_B; 
        5'b11111: //slt (set less than) це коли наприклад віднімаємо два числа і в результаті виходить від'ємне число це свідчить про те що А<B ну і slt = 1  
        	out_result = {31'b0, t_ovf};
	default:  
	   out_result = {32{1'bz}}; 
	endcase
end
assign out_zero = (out_result == 32'b0);
assign out_overflow = t_ovf & (in_func[4:1] == 4'b1011);
	
endmodule