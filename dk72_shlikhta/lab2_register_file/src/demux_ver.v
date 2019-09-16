`timescale 1ns/1ps
module demux_ver(i_ADDR, i_I, o_O);

//ports declaration
input [4:0] i_ADDR;	//addres
input i_I;			//input data
output reg [31:0] o_O;	//output

always @* begin
	o_O = i_I << i_ADDR;
end

endmodule
