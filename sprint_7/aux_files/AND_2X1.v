module AND2X1 (

//input data
input i0,
input i1,

//output signal
output reg out_and);
	always@(*)
		out_and = i0 & i1;
	
endmodule