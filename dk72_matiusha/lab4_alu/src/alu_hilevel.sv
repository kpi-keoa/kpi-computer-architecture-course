`timescale 1ns/1ps

module alu_hilevel #(parameter WIDTH = 32) (
    input logic [WIDTH-1:0] a, b,
    input logic [1:0] instr,
    input logic [1:0] alusel,
    output logic [WIDTH-1:0] y,
    output logic zero, carry);


	logic [WIDTH*2-1:0] temp;

	always_comb begin
	    case ({alusel, instr})
	    	4'h0: begin y = $signed(a)+$signed(b); carry=0; end
	    	4'h1: begin y = $signed(a)-$signed(b); carry=0; end
	    	4'h2: {carry, y} = $signed(a)+$signed(b);
	    	4'h3: {carry, y} = $signed(a)-$signed(b);
	    	4'h4: begin temp = $signed(a)*$signed(b); y = temp[0+:WIDTH]; carry=0;  end
	    	4'h5: begin y = $signed(a)%$signed(b); carry=0; end
	    	4'h6: begin temp = $signed(a)*$signed(b); y = temp[WIDTH+:WIDTH]; carry=0; end
	    	4'h7: begin y = $signed(a)/$signed(b); carry=0; end
	    	4'h8: begin y = a & b; carry=0; end
	    	4'h9: begin y = a | b; carry=0; end
	    	4'ha: begin y = ~(a|b); carry=0; end
	    	4'hb: begin y = a^b; carry=0; end
	    	4'hc: begin y = a << b[$clog2(WIDTH)-1:0]; carry=0; end
	    	4'hd: begin y = a >> b[$clog2(WIDTH)-1:0]; carry=0; end
	    	4'he: begin y = $signed(a) >>> b[$clog2(WIDTH)-1:0]; carry=0; end
	    	4'hf: begin temp = {a, a}; y=temp[b[$clog2(WIDTH)-1:0]+:WIDTH]; carry=0; end
	    	default: begin y = 'z; carry='z; end 
	   	endcase
	   	zero = ~| y;
	end        
endmodule
