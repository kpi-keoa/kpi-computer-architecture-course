
module memory #(parameter WIDTH = 32) (clk, we, addr, wd,rd, arst, gpio_ioport, inta, intb, intc, into);
	input  clk, we, arst;
	input  [WIDTH-1:0] addr, wd;
	output reg [WIDTH-1:0] rd;
	output wire inta, intb, intc, into;
	inout [WIDTH-1:0] gpio_ioport;

	wire [WIDTH-1:0] ram_rd, ddr_out, port_out, pin_out, af1_out, af2_out, tcnt_out, ocra_out, ocrb_out, ocrc_out, tccr_out;
	wire [4:0] extclk_select;


	decoder #(32) dec(addr, ram_we, ddr_we, port_we, pin_we, af1_we, af2_we, tcnt_we, ocra_we, ocrb_we, ocrc_we, tccr_we);

	data_mem #('h80) dmem(clk, ram_we&we, addr, wd, ram_rd);
	
	// input clk;
	// input rst;
	// input ddr_we, port_we, af1_we, af2_we, pwma, pwmb, pwmc;
	// input [4:0] extclk_select;
	// input [WIDTH-1:0] data_in;
	// output [WIDTH-1:0] ddr_out, port_out, pin_out, af1_out, af2_out;
	// output extclk;
	// inout [WIDTH-1:0] ioport;
	gpio #(32) gpio1(clk, arst, ddr_we&we, port_we&we, af1_we&we, af2_we&we, pwma, pwmb, pwmc, extclk_select, wd, 
		ddr_out, port_out, pin_out, af1_out, af2_out, extclk, gpio_ioport);
	// input clk,    // Clock
	// input 	rst_n,  // Asynchronous reset active low
	// 		tcnt_we, ocra_we, ocrb_we, ocrc_we, tccr_we, ext_clk,
	// input 	[WIDTH-1:0] data_in,
	// output 	inta, intb, intc, into, pwma, pwmb, pwmc,
	// output [WIDTH-1:0] o_tcnt, o_ocra, o_ocrb, o_ocrc, o_tccr,
	// output [4:0] extclk_select
	timer #(32) timer1(clk, arst, tcnt_we&we, ocra_we&we, ocrb_we&we, ocrc_we&we, tccr_we&we, extclk, wd, 
		inta, intb, intc, into, pwma, pwmb, pwmc, tcnt_out, ocra_out, ocrb_out, ocrc_out, tccr_out, extclk_select);
	

	assign rd = (ram_we) ? ram_rd :
				(ddr_we) ? ddr_out:
				(port_we)? port_out:
				(pin_we) ? pin_out:
				(af1_we) ? af1_out:
				(af2_we) ? af2_out:
				(tcnt_we)? tcnt_out:
				(ocra_we)? ocra_out:
				(ocrb_we)? ocrb_out:
				(ocrc_we)? ocrc_out:
				(tccr_we)? tccr_out:
				32'h0;



endmodule



module decoder #(parameter WIDTH = 32) (i_addr, ram_we, ddr_we, port_we, pin_we, af1_we, af2_we, tcnt_we, ocra_we, ocrb_we, ocrc_we, tccr_we);
	input [WIDTH-1:0] i_addr;
	output wire ram_we, ddr_we, port_we, pin_we, af1_we, af2_we, tcnt_we, ocra_we, ocrb_we, ocrc_we, tccr_we;

	assign ram_we = (i_addr<'h80);
	assign ddr_we = (i_addr=='h80);
	assign port_we = (i_addr=='h81);
	assign pin_we = (i_addr=='h82);
	assign af1_we = (i_addr=='h83);
	assign af2_we = (i_addr=='h84);
	assign tcnt_we = (i_addr=='h85);
	assign ocra_we = (i_addr=='h86);
	assign ocrb_we = (i_addr=='h87);
	assign ocrc_we = (i_addr=='h88);
	assign tccr_we = (i_addr=='h89);

endmodule




module gpio #(parameter WIDTH = 32) (clk, rst, ddr_we, port_we, af1_we, af2_we, pwma, pwmb, pwmc, extclk_select, data_in, 
										ddr_out, port_out, pin_out, af1_out, af2_out, extclk, ioport);
	input clk;
	input rst;
	input ddr_we, port_we, af1_we, af2_we, pwma, pwmb, pwmc;
	input [4:0] extclk_select;
	input [WIDTH-1:0] data_in;
	output [WIDTH-1:0] ddr_out, port_out, pin_out, af1_out, af2_out;
	output extclk;
	inout [WIDTH-1:0] ioport;
	
	
	reg [WIDTH-1:0] ddr, port, pin, ibuffer, af1reg, af2reg;
	wire[WIDTH-1:0] ddrw, portw;
	wire[WIDTH*2-1:0] af = {af2reg, af1reg};
	assign port_out = port;
	assign pin_out = pin;
	assign ddr_out = ddr;
	assign af1_out = af1reg;
	assign af2_out = af2reg;
	assign ddrw = ddr;

	assign extclk = pin[extclk_select];



	genvar i;

	generate
		for (i = 0; i < WIDTH; i++) begin
			wire [3:0] port_vars = {pwmc, pwmb, pwma, port[i]};
			assign portw[i] = port_vars[af[i*2+:2]];
		end
	endgenerate

	
	generate
		for (i = 0; i < WIDTH; i++) begin : bidir
        	assign ioport[i] = ddrw[i] ? portw[i] : 1'bz;
		end
	endgenerate


	always_ff @(posedge clk or negedge rst) begin
		if(!rst) {ddr, port, pin, ibuffer, af1reg, af2reg} <= '0;
		else begin 
			if (ddr_we) ddr <= data_in;
			if (port_we) port <= data_in;
			if (af1_we) af1reg <= data_in;
			if (af2_we) af2reg <= data_in;
			pin <= ibuffer;
			ibuffer <= ioport;
		end
	end

endmodule




