module ADDER_8 (

//input data
input [7:0] DATA_ADDER0,
input [7:0] DATA_ADDER1,

//output signal
output reg [7:0] out_adder);
always@(*)
	out_adder = DATA_ADDER0 + DATA_ADDER1; //soma o adress atual, leva proximo adress
	
endmodule
