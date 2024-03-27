// Code your design here
//module unidade de controle
module CONTROL_UNIT(

//input data
input [6:0] OP, //OPcode -  define tipo da instrucao
input [2:0] Funct3, // define a operacao principal- dentro do tipo R
input [6:0] Funct7, // define funçoes especificas em instrucoes complexas
 
 
//RegWrite - dado vai ser escrito em reg,ULASr - reg ou const, ULAControl- qual instrucao
output reg [2:0] ULAControl, output reg ULASrc, output reg RegWrite,
output reg MemWrite, ResultSrc, Branch, output reg [1:0] ImmSrc);

reg [16:0] register_concatenation; //armazena os valores dos inputs concatenados

//register_concatenation = 17'b00000000000000000; //zera o reg

	always@(*)begin
		register_concatenation = {OP, Funct3, Funct7}; //concatena bits
		casez(register_concatenation)
			17'b01100110000000000	:	begin //ADD
								RegWrite = 1;
								ULASrc = 0;
								ULAControl = 3'b000;
								ImmSrc = 2'b??;
								MemWrite = 0;
								ResultSrc = 0;
								Branch = 0;
							end
			17'b01100110000100000	:	begin //SUB
								RegWrite = 1;
								ULASrc = 0;
								ULAControl = 3'b001;
								ImmSrc = 2'b??;
								MemWrite = 0;
								ResultSrc = 0;
								Branch = 0;
							end
			17'b01100111110000000	:	begin //AND
								RegWrite = 1;
								ULASrc = 0;
								ULAControl = 3'b010;
								ImmSrc = 2'b??;
								MemWrite = 0;
								ResultSrc = 0;
								Branch = 0;
							end
			17'b01100111100000000	:	begin //OR
								RegWrite = 1;
								ULASrc = 0;
								ULAControl = 3'b011;
								ImmSrc = 2'b??;
								MemWrite = 0;
								ResultSrc = 0;
								Branch = 0;
							end
			17'b01100111000000000	:	begin //XOR
								RegWrite = 1;
								ULASrc = 0;
								ULAControl = 3'b100;
								ImmSrc = 2'b??;
								MemWrite = 0;
								ResultSrc = 0;
								Branch = 0;
							end
			17'b01100110100000000	:	begin //SLT
								RegWrite = 1;
								ULASrc = 0;
								ULAControl = 3'b101;
								ImmSrc = 2'b??;
								MemWrite = 0;
								ResultSrc = 0;
								Branch = 0;
							end
			17'b0010011000???????	:	begin //ADDi
								RegWrite = 1;
								ULASrc = 1;
								ULAControl = 3'b000;
								ImmSrc = 2'b00;
								MemWrite = 0;
								ResultSrc = 0;
								Branch = 0;
							end
			17'b0000011000???????	:	begin //LB - LOAD BYTE
								RegWrite = 1;
								ULASrc = 1;
								ULAControl = 3'b000;
								ImmSrc = 2'b00;
								MemWrite = 0;
								ResultSrc = 1;
								Branch = 0;
							end
			17'b0100011000???????	:	begin //SB - STORE BYTE
								RegWrite = 0;
								ULASrc = 1;
								ULAControl = 3'b000;
								ImmSrc = 2'b01;
								MemWrite = 1;
								ResultSrc = 1'b?;
								Branch = 0;
							end
			17'b1100011000???????	:	begin //BEQ - DESVIA O FLUXO DO PROGRAMA SE DOS REG IGUAIS 
								RegWrite = 0;
								ULASrc = 0;
								ULAControl = 3'b001;
								ImmSrc = 2'b10;
								MemWrite = 0;
								ResultSrc = 1'b?;
								Branch = 1;
							end
			
			default	: register_concatenation = 17'b00000000000000000;//null
		endcase
		end
endmodule
