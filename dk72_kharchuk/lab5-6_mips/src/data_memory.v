//MODULE REALISATION TAKEN FROM Alexandr R. Shlikhta
`define REG_WIDTH 32
`define NUM_OF_CELL 21
`define ADDR_WIDTH $clog2(`NUM_OF_CELL)

module data_memory(d_in, d_out, addr, we, clk);

input [`REG_WIDTH-1:0] d_in;
input [`ADDR_WIDTH-1:0] addr;
input we, clk;

output [`REG_WIDTH-1:0] d_out;

reg [`REG_WIDTH-1:0] ram [`NUM_OF_CELL-1:0];

assign d_out = ram[addr];

initial $readmemb("/home/morel/workspace/ComputerArchitecture/kpi-computer-architecture-course/dk72_kharchuk/lab5-6_mips/check/mem_data.dat", ram);

always @(posedge clk) begin
	if(we) ram[addr] <= d_in;
	$writememh("/home/morel/workspace/ComputerArchitecture/kpi-computer-architecture-course/dk72_kharchuk/lab5-6_mips/check/DMEM_OUT.dat", ram);
end
endmodule
