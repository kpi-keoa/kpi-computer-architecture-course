`timescale 1ns/1ps
//2way assoc LRU 4word 4entry
module cache (
	input logic clk, we, re,
	input logic [31:0] addr, wd,
	output logic [31:0] rd,
	output logic stall
);

reg state;

typedef struct packed
{
	reg [2:0] tag;
	reg [4 * 32 -1:0] line;
} way;

typedef struct packed
{
	reg lru;
	way [1:0] ways;
} entry;

//mem 128 words 32words per entry
//tag 3 bit
wire [1:0] word_pos = addr[0+:2];
wire [2:0] tag = addr[2+:3];
wire [1:0] entry_sel = addr [5+:2];

//cache entries
entry [3:0] entries;

//32x128bit no 128x32 bit
wire [4*32-1:0] mem_rd;
reg [4*32-1:0] mem_wd;
reg [4:0] mem_waddr, mem_raddr;
reg mem_we;
wire mem_clk = clk;
data_mem #(32, 128) main_mem(mem_clk, mem_we, mem_waddr, mem_raddr, mem_wd, mem_rd);

reg [6:0] t_addr;
wire [1:0] s_esel, s_wpos;
wire [2:0] s_tag;
assign {s_esel, s_tag, s_wpos} = t_addr;

assign mem_raddr = {entry_sel, tag};
always @(posedge clk) begin 
	stall = 1'b0;
	mem_we=0;
	case (state)
		0: begin //not stalled
			rd=0;
			t_addr <= addr[6:0];
						//write: compare tags, unequal -> miss
			if(we) begin
				if(tag == entries[entry_sel].ways[0].tag) begin 
					entries[entry_sel].ways[0].line[32*word_pos+:32] <= wd;
					entries[entry_sel].lru <= 1;
				end else if(tag == entries[entry_sel].ways[1].tag) begin 
					entries[entry_sel].ways[1].line[32*word_pos+:32] <= wd;
					entries[entry_sel].lru <= 0;
				end else begin //cache miss: flip LRU, load data on LRU except overwriten data
					mem_we=1;
					mem_waddr = {entry_sel, entries[entry_sel].ways[entries[entry_sel].lru].tag};//writeback LRU
					mem_wd = entries[entry_sel].ways[entries[entry_sel].lru].line;					//writeback LRU	
					stall = 1'b1;
					state <= !state;
				end
			end

			if(re) begin
				if(tag == entries[entry_sel].ways[0].tag) begin 
					rd = entries[entry_sel].ways[0].line[32*word_pos+:32];
					entries[entry_sel].lru <= 1;
				end else if(tag == entries[entry_sel].ways[1].tag) begin 
					rd = entries[entry_sel].ways[1].line[32*word_pos+:32];
					entries[entry_sel].lru <= 0;
				end else begin //cache miss: flip LRU, writeback, read  tru addr
					mem_we=1;
					mem_waddr = {entry_sel, entries[entry_sel].ways[entries[entry_sel].lru].tag};//writeback LRU
					mem_wd = entries[entry_sel].ways[entries[entry_sel].lru].line;					//writeback LRU
					stall = 1'b1;
					state <= !state;
				end
			end
		end
		1: begin //stalled
			entries[s_esel].ways[entries[s_esel].lru].line <= mem_rd;//read back
			if(we) entries[s_esel].ways[entries[s_esel].lru].line[32*s_wpos+:32] <= wd;
			entries[s_esel].ways[entries[s_esel].lru].tag <= s_tag;
			entries[s_esel].lru <= !entries[s_esel].lru;	//flip lru bit
			state <= !state;									//switch state
			rd = mem_rd[32*s_wpos+:32];						//instant output
		end
		default : /* default */;
	endcase
end



initial begin
	t_addr='0;
	entries='0;
	for (int i = 0; i < 4; i++) begin
		for (int j = 0; j < 2; j++) begin
			entries[i].ways[j].tag = 3'h7;//todo add present bit
		end
	end
	state=0;
end

endmodule












