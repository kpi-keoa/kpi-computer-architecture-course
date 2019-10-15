`timescale 1ns/1ps


module barrel_shifter(data_in, bs_opsel, shift_amount, result);
input wire [4:0] shift_amount;
output reg [31:0] result;
input wire [31:0] data_in;
input wire [2:0] bs_opsel;

wire [63:0] shift_left;
wire [64:0] shift_right;
wire extend;

assign extend = data_in[31] & bs_opsel[2];
assign shift_left = {data_in, data_in} << shift_amount;
assign shift_right = $signed({extend, data_in, data_in}) >>> shift_amount;

always@* begin
	casez(bs_opsel)
		3'b011: result = shift_right[0+:32]; // ROR
		3'b010: result = shift_right[32+:32]; // SRL
		3'b?01: result = shift_left[32+:32]; // ROL
		3'b11?: result = shift_right[32+:32]; // SRA
		3'b?00: result = shift_left[0+:32]; // SLL
	endcase
end

endmodule
