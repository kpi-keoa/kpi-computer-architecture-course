`define REG_WIDTH 32
`define ADDR_WIDTH $clog2(`REG_WIDTH)

module bus_mux(addr, d_i_0, d_i_1, d_o); //this mux will be expanded in future

input [`ADDR_WIDTH-1:0] addr;
input [`REG_WIDTH-1:0] d_i_0;
input [`REG_WIDTH-1:0] d_i_1;

output reg [`REG_WIDTH-1:0] d_o;

always @* begin
	casez(addr)
		0: d_o = d_i_0;
		1: d_o = d_i_1;
		default: d_o = 0;
	endcase
end


endmodule
