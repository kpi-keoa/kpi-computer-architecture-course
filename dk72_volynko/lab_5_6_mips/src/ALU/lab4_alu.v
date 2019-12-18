`timescale 1ns/1ps


module lab4_alu #(parameter WIDTH = 32)(in_A, in_B, in_func, out_result, out_overflow, out_zero, shamt);

input  [WIDTH-1:0] in_A, in_B;
input  [4:0] in_func, shamt;
output out_overflow;
output reg out_zero;
output reg [WIDTH-1:0]  out_result;

wire [WIDTH-1:0] result_barrel_shifter;
wire [WIDTH-1:0] result_addsub;
wire [WIDTH-1:0] result_muldiv;
wire t_ovf;

muldiv mul_h(
	.in_A(in_A), .in_B(in_B), .check(in_func[1:0]), .out(result_muldiv));

cinadd add(
	.opA(in_A), .opB(in_B), .addsub(in_func[0]), .result(result_addsub), .overflow(t_ovf));

lab3_barrel_shifter shift(
	.bs_opsel(in_func[2:0]), .shift_amount(shamt), .data_in(in_B), .result(result_barrel_shifter)); 

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
        5'b11111: //slt
        	out_result = {31'b0, t_ovf};
	default:  
	   out_result = {WIDTH{1'bz}}; 
	endcase
	out_zero = ~| out_result;
end
assign out_overflow = t_ovf & (in_func[4:1] == 4'b1011);
	
endmodule
