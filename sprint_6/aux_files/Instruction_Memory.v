 //memoria ROM
module INSTRUCTION_MEMORY(

//input data
input [7:0] A, //input decodificador

 
//output signal
output reg [31:0] RD);
	always@(*)
		case(A)
			8'h00	: RD = 32'h0AB00093;//addi x1, x0, 0xAB
			8'h04	: RD = 32'h00100523;//sb x1, 0xA(x0)
			8'h08	: RD = 32'h00A00103;//lb x2, 0xA(x0)
			8'h0C	: RD = 32'h002005A3;//sb x2, 0xB(x0)
			8'h10	: RD = 32'h00B00183;//lb x3, 0xB(x0)
			8'h14	: RD = 32'h00300623;//sb x3, 0xC(x0)
			8'h18	: RD = 32'h00C00203;//lb x4, 0xC(x0)
			default	: RD = 32'h00000000;//null
		endcase
	
endmodule
