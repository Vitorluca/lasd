//questao 2-a e b
module DECOD_4x7 #(parameter BITS=7/*desafio*/)(

//input data
input [BITS-1:0] i0, //input decodificador
 
 
//output signal
output reg [7:0] out_decod);
	always@(*)
		case(i0)
			4'b0000	: out_decod = 7'b0000001;//0
			4'b0001	: out_decod = 7'b1001111;//1
			4'b0010	: out_decod = 7'b0010010;//2
			4'b0011	: out_decod = ~7'b1111001;//3
			4'b0100	: out_decod = 7'b1001100;//4
			4'b0101	: out_decod = 7'b0100100;//5
			4'b0110	: out_decod = 7'b0100000;//6
			4'b0111	: out_decod = ~7'b1110000;//7
			4'b1000	: out_decod = ~7'b1111111;//8
			4'b1001	: out_decod = ~7'b1111011;//9
			4'b1010	: out_decod = ~7'b1110111;//A
			4'b1011	: out_decod = ~7'b0011111;//b
			4'b1100	: out_decod = ~7'b1001110;//C
			4'b1101	: out_decod = ~7'b0111101;//d
			4'b1110	: out_decod = ~7'b1001111;//E
			4'b1111	: out_decod = ~7'b1000111;//F
			default	: out_decod = ~7'b0000000;//null
		endcase
	
endmodule
