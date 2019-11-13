`timescale 1ns/1ps 

`define WIDTH 32
module data_memory(data_out, address, data_in, write_enable, clk);

	 output wire [`WIDTH-1:0] data_out;
    input [`WIDTH-1:0] address;
    input [`WIDTH-1:0] data_in;
    input write_enable;
    input clk;

    reg [`WIDTH-1:0] memory [0:128];
	 
	 
	 initial $readmemb("/home/laviss/workspace/lab_alu/src/data_memory.bin", memory);
	 
	 assign data_out  = memory[address];
	
    always @(posedge clk) begin
        if (write_enable) begin
            memory[address] <= data_in;
        end
    end

endmodule
