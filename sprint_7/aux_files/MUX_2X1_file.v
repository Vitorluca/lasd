module #(parameter BITS=8) MUX_2X1 (

//input data
input [BITS-1:0] i0,
input [BITS-1:0] i1,
input sel,

//output signal
output reg [7:0] out_mux);
	always@(*)
		if(sel == 0)
			out_mux= i0;
		else
			out_mux = i1;
	
endmodule