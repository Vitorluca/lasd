 //memoria ROM
module INSTRUCTION_MEMORY(

//input data
input [7:0] A, //input decodificador

 
//output signal
output reg [31:0] RD);
	always@(*)
		case(A)
			//8'h00	: RD = 32'h0FF00083;//init:lb x1, 0xFF(x0)
			//8'h04	: RD = 32'h0E100FA3;//sb x1, 0xFF(x0) 
			//8'h08	: RD = 32'hFE000CE3;//beq x0, x0, init
			
			//Programa 2
			8'h00	: RD = 32'h0FF00083;//init: lb x1, 0xFF(x0)
			8'h04	: RD = 32'h00100113;//addi x2, x0, 1
			8'h08	: RD = 32'h0020F1B3;//and x3, x1, x2 
			8'h0C	: RD = 32'h00218463;//beq x3,x2, impar
			8'h10	: RD = 32'h00018663;//beq x3, x0, par
			8'h14	: RD = 32'h0E000FA3;//impar:sb x0, 0xFF(x0)
			8'h18	: RD = 32'hFE0004E3;//beq x0,x0, init
			8'h1C	: RD = 32'h0E200FA3;//par: sb x2, 0xFF(x0)
			8'h20	: RD = 32'hFE0000E3;//beq x0,x0, init
			default	: RD = 32'h00000000;//null
		endcase
	
endmodule
