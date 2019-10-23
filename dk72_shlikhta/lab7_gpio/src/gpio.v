`timescale 1ns/1ps

`define REG_WIDTH 32

`define GPIO_ADDR_MIN 128
`define GPIO_ADDR_MAX 130

`define DDR_ADDR 128
`define PIN_ADDR 129
`define PORT_ADDR 130

module gpio(gpio_d_in, gpio_addr, we, clk, arst_n, gpio_d_out, io);

input wire [`REG_WIDTH-1:0] gpio_d_in;
input wire [`REG_WIDTH-1:0] gpio_addr;
input wire we;
input wire clk;
input wire arst_n;

output reg [`REG_WIDTH-1:0] gpio_d_out;

inout wire [`REG_WIDTH-1:0] io;

reg [`REG_WIDTH-1:0] gpio_regs [`GPIO_ADDR_MAX:`GPIO_ADDR_MIN];

wire [`REG_WIDTH-1:0] ddr_w;
wire [`REG_WIDTH-1:0] pin_w;
wire [`REG_WIDTH-1:0] port_w;

assign ddr_w = gpio_regs[`DDR_ADDR];
assign port_w = gpio_regs[`PORT_ADDR];

gpio_cell gpio_0[`REG_WIDTH-1:0](ddr_w, port_w, pin_w, io) ;

always @(posedge clk or negedge arst_n) begin
	if(!arst_n) begin
		gpio_regs[`DDR_ADDR] <= 32'b0;
		gpio_regs[`PORT_ADDR] <= 32'b0;
	end
	else if(we)
			casez(gpio_addr)
				`DDR_ADDR: gpio_regs[`DDR_ADDR] = gpio_d_in;
				`PORT_ADDR: gpio_regs[`PORT_ADDR] = gpio_d_in;
				default: begin
					gpio_regs[`DDR_ADDR] <= 32'b0;
					gpio_regs[`PORT_ADDR] <= 32'b0;
				end
			endcase
end

always @* begin
	gpio_regs[`PIN_ADDR] <= pin_w;

	casez(gpio_addr)
		`DDR_ADDR: gpio_d_out = gpio_regs[`DDR_ADDR];
		`PORT_ADDR: gpio_d_out = gpio_regs[`PORT_ADDR];
		`PIN_ADDR: gpio_d_out <= gpio_regs[`PIN_ADDR];
		default: gpio_d_out = 0;
	endcase
end
	

endmodule


module gpio_cell(ddr, port, pin, io);

	input wire port;
	input wire ddr;

	output wire pin;

	inout wire io;

	assign io = ddr ? port : 1'bz;
	assign pin = io;

endmodule

