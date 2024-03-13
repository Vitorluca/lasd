// Code your design here
module ULA (

//input data
input [7:0] SrcA, //entrada de dados A
input [7:0] SrcB, //entrada de dados B
input [2:0] ULAControl, //seletor de operacao da ULA

//output signal
  output reg [7:0] ULAResult, output reg Zero);
	always@(*)
		begin	

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
    if(ULAResult == 0)
		Zero = 1;
	else
		Zero = 0;
	end
endmodule
