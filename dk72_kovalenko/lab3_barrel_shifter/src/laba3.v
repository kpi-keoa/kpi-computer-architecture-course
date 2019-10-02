`timescale 1ns/1ps

`define SLL 3'b?00	//shift left logical
`define SRL 3'b010	//shift right logical 
`define ROL 3'b?01	//rotate left
`define ROR 3'b011	//rotate right
`define SRA 3'b11?	//shift right arithmetical

module barrel_shifter( bs_opsel, shift_amount, data_in, result);

input  [31:0]data_in; 	//input Barrel_shifter
input  [2:0]bs_opsel;	//choice of operation
input  [31:0]shift_amount;	//bit for swift
output reg [31:0]result;  //output Barrel_shifter 
wire arithmetical;

assign arithmetical = data_in[31] & bs_opsel[2];
wire [63:0]shift_left_logical = {data_in, data_in} << shift_amount;
wire [63:0]shift_right_logical = {data_in, data_in} >> shift_amount;
wire [31:0]shift_right_arithmetical = $signed({arithmetical,data_in}) >>> shift_amount; // Alexandr Shlihta autor 

always @* begin
  casez(bs_opsel)
    `SLL:  result = shift_left_logical[31:0];   
    `SRL:  result = shift_right_arithmetical[31:0];  
    `ROL:  result = shift_left_logical[63:32];
    `ROR:  result = shift_right_logical[31:0];        
    `SRA:  result = shift_right_arithmetical[31:0];
  endcase
 
end
		
endmodule
