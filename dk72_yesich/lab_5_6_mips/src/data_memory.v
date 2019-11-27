`timescale 1ns/1ps
module data_memory(data_in,data_out,addr,we,clk);

parameter WIDTH = 32;                   // not shure
parameter NUM_CELL = 21;               // this parameter depends on amaunt of data in data memory
parameter ADDR_W = $clog2(NUM_CELL);

input [ADDR_W-1:0] addr;
input we;
input [WIDTH-1:0]data_in; 
input clk;
output reg [WIDTH-1:0] data_out;

reg [WIDTH-1:0] datam [NUM_CELL-1:0];

initial $readmemb("/home/dima/labs/mipsach/test/mem_data.dat", datam);

always @(posedge clk)begin
	if(we)begin
		datam[addr] <= data_in;
	end

end

always @(negedge clk)begin
  if(~we) begin
		data_out <= datam[addr];
	end
end
endmodule	

