 //memoria ROM
module INSTRUCTION_MEMORY(

//input data
input [7:0] A, //input decodificador

 
//output signal
output reg [31:0] RD);
	always@(*)
		case(A)
			8'h00	: RD = 32'h00700093;//addi x1, x0, 7
			8'h04	: RD = 32'h00300193;//addi x3, x0, 3
			8'h08	: RD = 32'hFFF00113;//init: addi x2, x0, -1
			8'h0C	: RD = 32'h00110113;//incremento: addi x2, x2, 1
			8'h10	: RD = 32'h003123B3;//slt x7, x2, x3
			8'h14	: RD = 32'hFE208AE3;//beq x1, x2, init
			8'h18	: RD = 32'hFE000AE3;//beq x0, x0, incremento
			default	: RD = 32'h00000000;//null
		endcase
	
endmodule
