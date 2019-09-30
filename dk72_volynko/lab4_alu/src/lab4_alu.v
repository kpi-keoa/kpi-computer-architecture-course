`timescale 1ns/1ps

module lab4_alu(in_A, in_B, in_func, out_result, out_overlow, out_zero);

input  [31:0] in_A, in_B;
input  [4:0] in_func;
output out_overlow;
output reg out_zero;
output [31:0] out_result;

wire [31:0] result;
wire [31:0] result1;
wire [31:0] result2;
reg [31:0] alu_result;
assign out_result = alu_result;
assign overflow = 0;

muldiv mul_h(
	.in_A(in_A), .in_B(in_B), .check(in_func[1:0]), .out(result2));

cinadd add(
	.opA(in_A), .opB(in_B), .addsub(in_func[0]), .result(result1), .overflow(out_overlow));

lab3_barrel_shifter shift(
	.bs_opsel(in_func[2:0]), .shift_amount(5'h4), .data_in(in_A), .result(result)); 

always @(*) begin
	 casez(in_func)
	 5'b00???: // shift
           alu_result = result;
        5'b100??: // MUL or DIV
	   alu_result = result2;
        5'b1011?: // ADD_SUB
	   alu_result = result1;        
	5'b11000: // AND 
           alu_result = in_A & in_B; 
        5'b11001: // OR 
           alu_result = in_A | in_B;
        5'b11010: // NOR
           alu_result = ~(in_A | in_B);
        5'b11011: // XOR
           alu_result = in_A ^ in_B; 
	default:  
	   alu_result = 0; 
	endcase
	if(alu_result == 0) out_zero = 1; //becase "out_zero = ~|out_result;" doesn't work
	else out_zero = 0;
end
	
endmodule

