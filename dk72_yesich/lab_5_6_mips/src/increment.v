`timescale 1ns/1ps

module increment #(parameter WIDTH = 32) (
input [WIDTH-1:0] data_in,
output reg [WIDTH-1:0] data_out
);

always @* begin
	data_out <= data_in + 1;
end
endmodule
