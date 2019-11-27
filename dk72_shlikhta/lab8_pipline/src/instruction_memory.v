`timescale 1ns/1ps

module instruction_memory #(parameter WIDTH = 1, VOLUME = 1)(addr, instruction);

localparam ADDR_WIDTH = WIDTH;

input [ADDR_WIDTH-1:0] addr;

output [WIDTH-1:0] instruction;

reg [WIDTH-1:0] instruction_mem [VOLUME-1:0];

assign instruction = instruction_mem[addr];

initial $readmemb("/home/drcah4ec/lab8_pipeline_mips_core/pipepline_mips/test/instruction.instr", instruction_mem);

endmodule
