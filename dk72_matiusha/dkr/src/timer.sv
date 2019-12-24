
module timer #(parameter WIDTH=32) (
	input clk,    // Clock
	input 	rst_n,  // Asynchronous reset active low
			tcnt_we, ocra_we, ocrb_we, ocrc_we, tccr_we, ext_clk,
	input 	[WIDTH-1:0] data_in,
	output 	inta, intb, intc, into, pwma, pwmb, pwmc,
	output [WIDTH-1:0] o_tcnt, o_ocra, o_ocrb, o_ocrc, o_tccr,
	output [4:0] extclk_select
);

reg [WIDTH-1:0] TCNT, OCRA, OCRB, OCRC, TCCR;
wire ctl_clear, ctl_count, ctl_direction, compa, compb, compc, presc_clken, edge_clken;
reg [WIDTH-1:0] TOP;
wire [1:0] TOPVAL;
wire DIR, PEA, PEB, PEC, INTAE, INTBE, INTCE, INTOE, CLKSRC;
wire [4:0] PRESCALE;


const_div prescaler(clk, rst_n, (1<<PRESCALE), presc_clken);
edge_detector det  (clk, rst_n, ext_clk, edge_clken);
assign ctl_count = (CLKSRC)? edge_clken : presc_clken;
assign ctl_direction = !DIR;

//bit layout in TCCR
//TOPVAL[2] | DIR | PEA | PEB | PEC | INTA | INTB | INTC | INTO | CLKSRC | PRESC[5]? !!TODO ADD PRESCALING
assign {extclk_select, PRESCALE, CLKSRC, INTOE, INTCE, INTBE, INTAE, PCI, PEC, PBI, PEB, PAI, PEA, DIR, TOPVAL, CNTEN} = TCCR;//25 bits
assign inta = compa & INTAE;
assign intb = compb & INTBE;
assign intc = compc & INTCE;
assign into = ctl_clear & INTOE;

assign pwma = ((OCRA > TCNT)^PAI) & PEA;
assign pwmb = ((OCRB > TCNT)^PBI) & PEB;
assign pwmc = ((OCRC > TCNT)^PCI) & PEC;
assign compa = (OCRA == TCNT);
assign compb = (OCRB == TCNT);
assign compc = (OCRC == TCNT);

assign o_tcnt = TCNT;
assign o_ocra = OCRA;
assign o_ocrb = OCRB;
assign o_ocrc = OCRC;
assign o_tccr = TCCR;


always_comb begin
	casez(TOPVAL)
		2'h0: TOP = 32'hffffffff;
		2'h1: TOP = OCRA;
		2'h2: TOP = OCRB;
		2'h3: TOP = OCRC;
	endcase
end


assign ctl_clear = (!CNTEN) | (ctl_direction? (TCNT==TOP) : (TCNT==0));


//here tcnt logic
always_ff @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		TCNT <= 0;
	end else begin
		if (tcnt_we) begin
			TCNT <= data_in;
		end else begin
			if (ctl_clear) begin
				if (ctl_direction) begin
					TCNT <= 0;
				end else begin
					TCNT <= TOP;
				end
			end else begin
				if (ctl_count) begin
					if (ctl_direction) begin
						TCNT <= TCNT+1;
					end else begin 
						TCNT <= TCNT-1;
					end
				end
			end
		end
	end
end


//here ocra logic
always_ff @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		OCRA <= 0;
	end else begin
		if (ocra_we) begin
			OCRA <= data_in;
		end
	end
end

//here ocrb logic
always_ff @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		OCRB <= 0;
	end else begin
		if (ocrb_we) begin
			OCRB <= data_in;
		end
	end
end

//here ocrc logic
always_ff @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		OCRC <= 0;
	end else begin
		if (ocrc_we) begin
			OCRC <= data_in;
		end
	end
end


//here tccr logic
always_ff @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		TCCR <= 0;
	end else begin
		if (tccr_we) begin
			TCCR <= data_in;
		end else begin 
			if(into) TCCR[31]<=1;
			if(intc) TCCR[30]<=1;
			if(intb) TCCR[29]<=1;
			if(inta) TCCR[28]<=1;
		end
	end
end



endmodule




module edge_detector (
	input clk,    // Clock
	input rst_n,  // Asynchronous reset active low
	input data,
	output wire edg
);

reg detector;
always_ff @(posedge clk or negedge rst_n) begin
	if(~rst_n) begin
		detector <= 0;
	end else begin
		detector <= data;
	end
end

assign edg = !detector & data;

endmodule




module const_div(i_clk, i_rst_n, i_div_by, o_event);
	input i_clk;
	input i_rst_n;
	output o_event;
	input wire [31:0] i_div_by;
	reg [32-1:0] cnt;
	wire [32-1:0] cnt_max = i_div_by-1;
	wire sync_rst_cnt = (cnt_max == cnt);
	assign o_event = sync_rst_cnt;
	always @(posedge i_clk, negedge i_rst_n) begin
		if(~i_rst_n) begin
			cnt <= 0;
		end else begin
			if (sync_rst_cnt)
				cnt <= 0;
			else
				cnt <= cnt + 1'b1;
			end
	end
endmodule

















