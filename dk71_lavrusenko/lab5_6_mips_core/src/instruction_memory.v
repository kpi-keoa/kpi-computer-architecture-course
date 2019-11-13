//code part take from Aleksandr Shlihta, but it is essentially a rom memory description template, so it is not stolen part 

`timescale 1ns/1ps 
`define WIDTH 32
module instruction_memory(addr, instr_out);

input [`WIDTH-1:0] addr;
output [`WIDTH-1:0] instr_out;

reg [`WIDTH-1:0] instruction_mem [0:128];

assign instr_out = instruction_mem[addr];

initial $readmemb("/home/laviss/workspace/lab_alu/src/instr.instr", instruction_mem);

endmodule
