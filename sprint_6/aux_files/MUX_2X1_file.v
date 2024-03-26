module MUX_2X1 (

//input data
input [7:0] i0,
input [7:0] i1,
input sel,

//output signal
output reg [7:0] out_mux);
	always@(*)
		if(sel == 0)
			out_mux= i0;
		else
			out_mux = i1;
	
endmodule
