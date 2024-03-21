// Code your design here
//module unidade de controle
module CONTROL_UNIT(

//input data
input [6:0] OP, //OPcode -  define tipo da instrucao
input [2:0] Funct3, // define a operacao principal- dentro do tipo R
input [6:0] Funct7, // define funçoes especificas em instrucoes complexas
 
 
//RegWrite - dado vai ser escrito em reg,ULASr - reg ou const, ULAControl- qual instrucao
output reg [2:0] ULAControl, output reg ULASrc, output reg RegWrite, output reg ImmSrc, output reg MemWrite, output reg ResultSrc);

reg [16:0] register_concatenation; //armazena os valores dos inputs concatenados

//register_concatenation = 17'b00000000000000000; //zera o reg

	always@(*)begin
		register_concatenation = {OP, Funct3, Funct7}; //concatena bits
		case(register_concatenation)
			17'b01100110000000000	:	begin //ADD
								RegWrite = 1;
								ULASrc = 0;
								ULAControl = 3'b000;
								ImmSrc = 0;//x - TANTO FAZ
								MemWrite = 0;
								ResultSrc = 0;
								
							end
			17'b01100110000100000	:	begin //SUB
								RegWrite = 1;
								ULASrc = 0;
								ULAControl = 3'b001;
								ImmSrc = 0;//x - TANTO FAZ
								MemWrite = 0;
								ResultSrc = 0;
							end
			17'b01100111110000000	:	begin //AND
								RegWrite = 1;
								ULASrc = 0;
								ULAControl = 3'b010;
								ImmSrc = 0;//x - TANTO FAZ
								MemWrite = 0;
								ResultSrc = 0;
							end
			17'b01100111100000000	:	begin //OR
								RegWrite = 1;
								ULASrc = 0;
								ULAControl = 3'b011;
								ImmSrc = 0;//x - TANTO FAZ
								MemWrite = 0;
								ResultSrc = 0;
							end
			17'b01100111000000000	:	begin //XOR
								RegWrite = 1;
								ULASrc = 0;
								ULAControl = 3'b100;
								ImmSrc = 0;//x - TANTO FAZ
								MemWrite = 0;
								ResultSrc = 0;
							end
			17'b01100110100000000	:	begin //SLT
								RegWrite = 1;
								ULASrc = 0;
								ULAControl = 3'b101;
								ImmSrc = 0;//x - TANTO FAZ
								MemWrite = 0;
								ResultSrc = 0;
							end
			17'b00100110001111111	:	begin //ADDi para x=1
								RegWrite = 1;
								ULASrc = 1;
								ULAControl = 3'b000;
								ImmSrc = 0;
								MemWrite = 0;
								ResultSrc = 0;
							end
			17'b00100110000000000	:	begin //ADDi para x=0
								RegWrite = 1;
								ULASrc = 1;
								ULAControl = 3'b000;
								ImmSrc = 0;
								MemWrite = 0;
								ResultSrc = 0;
							end
			17'b00000110001111111	:	begin //LB para x=1
								RegWrite = 1;
								ULASrc = 1;
								ULAControl = 3'b000;
								ImmSrc = 0;
								MemWrite = 0;
								ResultSrc = 1;
							end
			17'b00000110000000000	:	begin //LB para x=0
								RegWrite = 1;
								ULASrc = 1;
								ULAControl = 3'b000;
								ImmSrc = 0;
								MemWrite = 0;
								ResultSrc = 1;
							end
			17'b01000110001111111	:	begin //SB para x=1
								RegWrite = 0;
								ULASrc = 1;
								ULAControl = 3'b000;
								ImmSrc = 1;
								MemWrite = 1;
								ResultSrc = 1;//x - TANTO FAZ
							end
			17'b01000110000000000	:	begin //SB para x=0
								RegWrite = 0;
								ULASrc = 1;
								ULAControl = 3'b000;
								ImmSrc = 1;
								MemWrite = 1;
								ResultSrc = 1;//x - TANTO FAZ
							end
							
			default	: register_concatenation = 17'b00000000000000000;//null
		endcase
		end
endmodule
