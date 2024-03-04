module MUX_2X1 #(parameter BITS=3/*desafio*/)(

//input data
input [BITS-1:0] i0,
input [BITS-1:0] i1,
input sel,

//output signal
output reg [BITS-1:0] out_mux);
	always@(*)
		if(sel == 0)
			out_mux= i0;
		else
			out_mux = i1;
	
endmodule
