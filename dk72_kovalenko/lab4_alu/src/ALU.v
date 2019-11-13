`timescale 1ns/1ps

`define alu_shift 5'b00???
`define alu_mul_div 5'b100??
`define alu_add_sub 5'b10111
`define alu_AND 5'b11000
`define alu_OR 5'b11010
`define alu_NOR 5'b11001 
`define alu_XOR 5'b11011

`define bs_SLL 3'b000
`define bs_SRL 3'b010
`define bs_ROL 3'b001
`define bs_ROR 3'b011
`define bs_SRA 3'b110

module ALU (A,B,operation,zf,resault,of);

parameter WIDTH = 32;
input [WIDTH-1:0]A;
input [WIDTH-1:0]B;
input [7:0]operation;
output reg zf;
output reg [WIDTH-1:0] resault;
output of;

wire [WIDTH-1:0] o_shift;
wire [WIDTH-1:0] o_su_ad;
wire [WIDTH-1:0] o_mu_di;
reg  [WIDTH-1:0] o_alu;

barrel_shifter bs1(
	.data_in(B),
   	.bs_opsel(operation[5:3]),
   	.shift_amount(A[4:0]),
   	.result(o_shift));

add_and_sub aad1(
	.A(A),
	.B(B),
	.result(o_su_ad),
	.instr(operation[0]),
	.over_f(of));

mul_div md1(	
	.A(A),
	.B(B),
	.oper(operation[4:3]),
	.out(o_mu_di));

always @* begin
casez(operation[7:3])
	`alu_shift: o_alu = o_shift;
	`alu_mul_div: o_alu = o_mu_di;
	`alu_add_sub: o_alu = o_su_ad;
	`alu_AND: o_alu = A & B;
	`alu_OR: o_alu = A | B;
	`alu_NOR: o_alu = ~(A | B);
	`alu_XOR: o_alu = A ^ B;
	 default: o_alu = {WIDTH,{1'bz}};
endcase 
	zf = ~|o_alu;
	resault = o_alu;
end

endmodule

module add_and_sub(
	input signed [31:0] A, 
	input signed [31:0] B,
	input instr,
	output reg [31:0] result,
	output reg over_f = 0);

reg [31:0] invers;
reg [33:0] temp;

always @* begin
	invers = B ^ {32{instr}};
end

always @* begin
  temp = $signed({A, instr}) + $signed({invers, instr});
  {result[31], over_f, result[30:0]} = temp[33:1];
end

endmodule

module mul_div #(parameter WIDTH = 32) (A, B, oper, out);                            
	input [WIDTH-1:0] A;				           
	input [WIDTH-1:0] B;
	input [1:0]oper;
	output reg [WIDTH-1:0]out;

	wire [WIDTH*2-1:0]mul;
	wire [WIDTH-1:0]div;
	wire [WIDTH-1:0]rest;

	assign mul = A * B;
	assign div = A / B;
	assign rest = A % B;

	always @* begin
	    casez(oper)
		2'b00: out = mul[WIDTH-1:0];
		2'b01: out = mul[WIDTH*2-1:WIDTH];
		2'b10: out = div[WIDTH-1:0];
		2'b11: out = rest[WIDTH-1:0];
		default: out = {WIDTH,{1'bz}};
	    endcase
	end
endmodule 

module barrel_shifter#(parameter width = 32)(data_in,bs_opsel,shift_amount,result);

input   [31:0]data_in;
input  [2:0]bs_opsel;
input  [7:0]shift_amount;
output reg [31:0]result;  
wire arithm;

assign arithm = data_in[31] & bs_opsel[2];
wire [63:0]l_shift = {data_in, data_in} << shift_amount;
wire [63:0]r_shift = {data_in, data_in} >> shift_amount;
wire [31:0]a_r_shift = $signed({arithm,data_in}) >>> shift_amount; 

always @* begin
  casez(bs_opsel)
    `bs_SLL:  result = l_shift[31:0];   
    `bs_SRL:  result = r_shift[63:32];  
    `bs_ROL:  result = l_shift[63:32];
    `bs_ROR:  result = r_shift[31:0];        
    `bs_SRA:  result = a_r_shift[31:0];
     default: result = {width,{1'bz}};
  endcase

end 
		
endmodule
