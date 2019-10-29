`timescale 1ns/1ps

module alu #(parameter WIDTH = 32) (
    input logic [WIDTH-1:0] a, b,
    input logic [1:0] instr,
    input logic [1:0] alusel,
    output logic [WIDTH-1:0] y,
    output logic zero, carry, sign, ovf, flags_update);

	wire [WIDTH-1:0] shout, logout, arout, mulout;
	wire cout, sf, of;
	assign carry = (cout);
	assign sign = (sf);
	assign ovf = (of);
	assign zero = ~| y;
	assign flags_update = (~|alusel);

	addsub #(WIDTH)  ar1(a, b, instr, arout, of, sf, cout);
	muldiv #(WIDTH)  md1(a, b, instr, mulout);
	logic_op #(WIDTH)  log1(instr, a, b, logout);
	sh_wrapper #(WIDTH)  sw1(a, b, instr, shout);

	always_comb begin
	    casez (alusel)
	    	2'b00: y = arout;
	    	2'b01: y = mulout;
	    	2'b10: y = logout;
	    	2'b11: y = shout;  
	    	default: y = 'z;
	   	endcase
	end        
endmodule







//00 add, 01 sub, 10 sbt, 11 slt
module addsub #(parameter WIDTH = 32) (input logic [WIDTH-1:0] a, b, input logic [1:0] f, output logic [WIDTH-1:0] y, output logic ovf, sign, carry);
	wire inv_b;
	wire [WIDTH-1:0] b_alu;
	wire cout;
	wire [WIDTH-1:0] temp_y;
	
	assign inv_b = |f;
	assign b_alu = b ^ {WIDTH{inv_b}};
	assign sign = temp_y[WIDTH-1];

	assign y = f[1] ? {{(WIDTH-1){1'b0}}, (f[0] ? (sign^ovf) : carry)} : temp_y;
	assign carry = cout;
	assign ovf = (a[31]^temp_y[31]) & (b_alu[31]^temp_y[31]);

	adder #(WIDTH) aluadder(a, b_alu, inv_b, temp_y, cout);
endmodule


module adder #(parameter WIDTH = 32) (input logic [WIDTH-1:0] a, b, input logic cin, output logic [WIDTH-1:0] y, output logic cout);
	var logic [WIDTH+1:0] temp;
    
	always_comb begin
		temp = {a, cin} + {b, cin};
		{cout, y} = temp[WIDTH+1:1];
	end
endmodule






//and or nor xor
module logic_op #(parameter WIDTH = 32) (input logic [1:0] f, input logic [WIDTH-1:0] a, b, output logic [WIDTH-1:0] y);
	always_comb begin 
		case(f)
			2'h0: y = a & b;
			2'h1: y = a | b;
			2'h2: y = ~(a | b); 
			2'h3: y = a ^ b;
			default: y = 'z;
		endcase
	end
endmodule



module sh_wrapper #(parameter WIDTH = 32) (input logic [WIDTH-1:0] a, shamt, input logic [1:0] f, output logic [WIDTH-1:0] result);
	var logic [2:0] opsel;

	localparam sel_width = $clog2(WIDTH);

	always_comb begin 
		case(f)
			2'h0: opsel = 3'b000;
			2'h1: opsel = 3'b010;
			2'h2: opsel = 3'b110;
			2'h3: opsel = 3'b011;
			default: opsel = 'z;
		endcase
	end

	barrel_shifter #(WIDTH) bs(a, opsel, shamt[sel_width-1:0], result);

endmodule




module muldiv #(parameter WIDTH = 32) (input logic [WIDTH-1:0] a, b, input logic [1:0] f, output logic [WIDTH-1:0] y);
	wire [WIDTH*2-1:0] mulout, divout;
	wire [WIDTH*2-1:0] result;

	mul #(WIDTH) mul1 (a, b, mulout);
	div #(WIDTH) div1(a, b, divout);

	assign result = (f[0]) ? divout : mulout;
	assign y = (f[1]) ? result[WIDTH+:WIDTH] : result[0+:WIDTH];
endmodule



module mul #(parameter WIDTH = 32) (input logic [WIDTH-1:0] a, b, output logic [WIDTH*2-1:0] y);
	assign y = $signed(a) * $signed(b);
endmodule


module div #(parameter WIDTH = 32) (input logic [WIDTH-1:0] a, b, output logic [WIDTH*2-1:0] y);
	assign y[0+:WIDTH] = $signed(a) % $signed(b);
	assign y[WIDTH+:WIDTH] = $signed(a) / $signed(b);
endmodule


