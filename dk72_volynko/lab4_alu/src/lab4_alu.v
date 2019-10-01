`timescale 1ns/1ps

module lab4_alu(in_A, in_B, in_func, out_result, out_overlow, out_zero);

input  [31:0] in_A, in_B;
input  [4:0] in_func;
output out_overlow;
output reg out_zero;
output reg [31:0]  out_result;

wire [31:0] result_barrel_shifter;
wire [31:0] result_addsub;
wire [31:0] result_muldiv;

muldiv mul_h(
	.in_A(in_A), .in_B(in_B), .check(in_func[1:0]), .out(result_muldiv));

cinadd add(
	.opA(in_A), .opB(in_B), .addsub(in_func[0]), .result(result_addsub), .overflow(out_overlow));

lab3_barrel_shifter shift(
	.bs_opsel(in_func[2:0]), .shift_amount(5'h4), .data_in(in_A), .result(result_barrel_shifter)); 

always @(*) begin
	 casez(in_func)
	 5'b00???: // shift
           out_result = result_barrel_shifter;
        5'b100??: // MUL or DIV
	   out_result = result_muldiv;
        5'b1011?: // ADD_SUB
	   out_result = result_addsub;        
	5'b11000: // AND 
           out_result = in_A & in_B; 
        5'b11001: // OR 
           out_result = in_A | in_B;
        5'b11010: // NOR
           out_result = ~(in_A | in_B);
        5'b11011: // XOR
           out_result = in_A ^ in_B; 
	default:  
	   out_result = {32{1'bz}}; 
	endcase
end

always @(*) begin
	 out_zero = ~| out_result;
end
	
endmodule

