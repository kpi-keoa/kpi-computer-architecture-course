
`timescale 1ns/1ps

module barrel_shifter_tb;

reg  [2:0] bs_opsel_sig;
reg  [4:0] shift_amount_sig;
reg  [31:0] data_in_sig ;
wire [31:0] result_sig;

integer i = 0;

barrel_shifter barrel_shifter_inst
(
	.bs_opsel(bs_opsel_sig) ,	// input [2:0] bs_opsel_sig
	.shift_amount(shift_amount_sig) ,	// input [31:0] shift_amount_sig
	.data_in(data_in_sig) ,	// input [31:0] data_in_sig
	.result(result_sig) 	// output [31:0] result_sig
);

initial begin 

  data_in_sig= 32'hbadc0de1;
  bs_opsel_sig = 0;
  shift_amount_sig = 4'h4;
    
  while(1) begin
	#10 bs_opsel_sig = 3'(i);//the statemant "n'(i)" was adviced by Vadim Charvchuk
	i++;
 end 
	

        

end

initial begin 
	#400 $stop();
end

endmodule

