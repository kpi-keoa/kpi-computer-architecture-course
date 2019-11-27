`timescale 1ns/1ps

module bus_mux #(parameter WIDTH = 1)(addr, d_i_0, d_i_1, d_o); //this mux will be expanded in future

localparam ADDR_WIDTH = $clog2(WIDTH);

input [ADDR_WIDTH-1:0] addr;
input [WIDTH-1:0] d_i_0;
input [WIDTH-1:0] d_i_1;

output reg [WIDTH-1:0] d_o;

always @* begin
	casez(addr)
		0: d_o = d_i_0;
		1: d_o = d_i_1;
		default: d_o = 0;
	endcase
end


endmodule
