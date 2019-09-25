
`timescale 1ns/1ps

`define SLL 3'b?00
`define SRL 3'b010
`define ROL 3'b?01
`define ROR 3'b011
`define SRA 3'b11?

module barrel_shifter(
         bs_opsel,
        shift_amount,
         data_in,
         result
  );

input   [31:0]data_in;
input  [2:0]bs_opsel;
input  [31:0]shift_amount;
output reg [31:0]result;  
wire arithm;

assign arithm = data_in[31] & bs_opsel[2];
wire [63:0]l_shift = {data_in, data_in} << shift_amount;
wire [63:0]r_shift = {data_in, data_in} >> shift_amount;
wire [31:0]a_r_shift = $signed({arithm,data_in}) >>> shift_amount; // Alexandr Shlihta adviced an idea how to create arephmetical shift block 

always @* begin
  casez(bs_opsel)
    `SLL:  result = l_shift[31:0];   
    `SRL:  result = a_r_shift[31:0];  
    `ROL:  result = l_shift[63:32];
    `ROR:  result = r_shift[31:0];        
    `SRA:  result = a_r_shift[31:0];
  endcase
 
end
		
endmodule
