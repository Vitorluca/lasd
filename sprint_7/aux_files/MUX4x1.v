module MUX_4X1 #(parameter BITS=12)(

//input data
input [BITS-1:0] i0,
input [BITS-1:0] i1,
input [BITS-1:0] i2,

input [1:0] sel,

//output signal
output reg [7:0] out_mux);
	always@(*)
		casez(sel)
			2'b00	:	begin //entrada i0
				out_mux = i0;
			end
			2'b01	:	begin //entrada i1
				out_mux = i1;
			end
			2'b10	:	begin //entrada i2
				out_mux = i2;
			end
			default : out_mux = 0;//null
		endcase
endmodule