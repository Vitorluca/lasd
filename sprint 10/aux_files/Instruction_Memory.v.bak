 //memoria ROM
module INSTRUCTION_MEMORY(

//input data
input [7:0] A, //input decodificador

 
//output signal
output reg [31:0] RD);
	always@(*)
		case(A)
			8'h00	: RD = 32'h0f300093;//addi x1, x0, 0xF3
			8'h04	: RD = 32'h00900113;//addi x2, x0, 9 
			8'h08	: RD = 32'h00208133;//add  x2, x1, x2
			8'h0C	: RD = 32'h0020f1b3;//and  x3, x1, x2 
			8'h10	: RD = 32'h0020e233;// or x4, x1, x2 
			8'h14	: RD = 32'h0040c2b3;//xor   x5, x1, x4
			8'h18	: RD = 32'h0041a333;//slt  x6, x3, x4 
			8'h1C	: RD = 32'h406203b3;//sub  x7, x4, x6
			default	: RD = 32'h00000000;//null
		endcase
	
endmodule
