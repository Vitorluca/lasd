module ULA_8X8 (

//input data
input [7:0] SrcA, //entrada de dados A
input [7:0] SrcB, //entrada de dados B
input [2:0] ULAControl, //seletor de operacao da ULA

//output signal
output reg [7:0] ULAResult, output reg Z);
	always@(*)
		begin	
		if(ULAResult == 0)
			Z = 0;
		else
			Z = 1;
		case(ULAControl)
			3'b000	:	ULAResult = SrcA + SrcB; //soma
			3'b001	:	ULAResult = SrcA + ~SrcB + 1; //subtracao
			3'b010	:	ULAResult = SrcA & SrcB; //and
			3'b011	:	ULAResult = SrcA | SrcB; //or
			3'b100	:	ULAResult = SrcA ^ SrcB; //xor
			3'b101	:	begin
								if(SrcA < SrcB)
									ULAResult = 1;
								else
									ULAResult = 0;
							end
			default	:	ULAResult = 0;
	endcase
	end
endmodule
