module ADDER_4 (

//input data
input [7:0] DATA_ADDER,

//output signal
output reg [7:0] out_adder);
always@(*)
	out_adder = DATA_ADDER + 8'h4; //soma o adress atual, leva proximo adress
	
endmodule
