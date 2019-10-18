`timescale 1ns/1ps


module instruction_memory #(parameter WIDHT = 32) (
input [WIDHT-1:0] addr,
output [WIDHT-1:0] instruction
);

reg [`REG_WIDTH-1:0] instruction_mem [30:0];   // 30 - instruction_numbers -1
assign instruction = instruction_mem[addr];
initial $readmemb("/home/morel/workspace/ComputerArchitecture/kpi-computer-architecture-course/dk72_kharchuk/lab5-6_mips/check/instruction.instr", instruction_mem);
endmodule
