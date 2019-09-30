`timescale 1ns/1ps

module test;

reg [`bitness-1:0] a, b;
reg [1:0] func;
reg [1:0] instr;
wire [`bitness-1:0] out, tout;
wire z, c, tz, tc;


alu #(`bitness) alu1(a, b, instr, func, out, z, c);
alu_hilevel #(`bitness) alutest(a,b,instr,func, tout, tz, tc);

initial begin 
	a=0; 
	b=0;
	func=0;
	instr=0;
	for (int i = 0; i < `TB_ITERATIONS; i++) begin
		#5 	a=$urandom();
			b=$urandom();
			instr=$urandom();
			func=$urandom();
		#1 	if((out != tout) || (z != tz) || (c != tc)) begin 
			$display("STALL AT INPUT A %0x B %0x INSTR %0x FUNC %0x\nOUTPUT Y %0x Z %x C %x\nEXPECTED Y %0x Z %x C %x\n",a,b,instr,func,out,z,c,tout,tz,tc);
		end
	end
	#10 a=`bitness'ha;b=`bitness'h5;func=0;instr=2'h3;
	#10 $finish();
end

endmodule









