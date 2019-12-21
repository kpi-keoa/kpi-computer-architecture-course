
`timescale 1ns/1ps

module test;

reg  [31:0] a ; 
reg  [31:0] b ;
reg  [4:0] opcod;
wire [31:0] res;
wire ovf, zout;
reg [4:0] shamt;


lab4_alu alu
(
	.in_A(a) ,	// input [31:0] a
	.in_B(b) ,	// input [31:0] b
	.in_func(opcod) ,	// input [4:0] opcod
	.out_result(res) ,	// output [31:0] res
	.out_overflow(ovf) ,	// output  ovf
	.out_zero(zout) ,	// output  zout
	.shamt(shamt) 	// input [4:0] shamt
);



initial begin 

	a= 32'habcdabcd;
	b= 32'habcdabcd;
	shamt=5'h8;

	opcod = 5'b00000;     //SLL  
	#10 opcod = 5'b00010; //SRL 
	#10 opcod = 5'b00001; //ROL
	#10 opcod = 5'b00011; //ROR
	#10 opcod = 5'b00110; //SRA

	#10 opcod = 5'b10000; //MUL LOW part (779D 8229)
	#10 opcod = 5'b10010; //MUL HIGH part (734C 68C0)
	#10 opcod = 5'b10001; //DIV result (0000 0001)
	#10 opcod = 5'b10011; //DIV remaind (0000 0000)
	// ABCD ABCD * ABCD ABCD = 734C 68C0 779D 8229
	// ABCD ABCD / ABCD ABCD = 0000 0001 (remaind 0)

	#10 a= 32'h22222222;
	b= 32'h44444444;
	opcod = 5'b10110;     //ADD
	#10 opcod = 5'b10111; //SUB
	//2222 2222 + 4444 4444 = 6666 6666
	//2222 2222 - 4444 4444 = EEEE EEEE

	#10 a= 32'h11111111;
	b= 32'h00000000;
	opcod = 5'b11000;     //AND
	#10 opcod = 5'b11001; //OR
	#10 opcod = 5'b11010; //NOR
	#10 opcod = 5'b11011; //XOR
	#10;opcod = 5'b11111; //SLT

end

initial begin 
	#500 $stop();
end

endmodule
