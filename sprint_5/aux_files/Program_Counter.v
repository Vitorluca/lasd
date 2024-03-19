module PROGRAM_COUNTER_8( //Armazena o indereço da proxima intrucao

//input data
input clock_reg, //input clock
input reset, //reseta todos os registradores para 0
input [7:0] PCin, //entrada de dados paralela de 8 bits

 
//output signal
output reg [7:0] PC); //saida de daodos paralela

always@(posedge clock_reg or negedge reset)begin
	if(!reset) begin
		PC[0] = 0;
		PC[1] = 0;
		PC[2] = 0;
		PC[3] = 0;
		PC[4] = 0;
		PC[5] = 0;
		PC[6] = 0;
		PC[7] = 0;
		
	end		
PC = PCin;
end
endmodule