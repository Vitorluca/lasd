module PROGRAM_COUNTER_8( //Armazena o indereÃ§o da proxima intrucao

//input data
input clock_reg, //input clock
input reset, //reseta todos os registradores para 0
input [7:0] PCin, //entrada de dados paralela de 8 bits

 
//output signal
output reg [7:0] PC); //saida de daodos paralela

always@(posedge clock_reg or negedge reset)begin
	if(!reset) begin
		PC <= 0; //atribuição não bloqueante
	end
	else begin
		PC <= PCin;
	end
end
endmodule