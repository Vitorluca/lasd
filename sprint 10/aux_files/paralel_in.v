module Parallel_IN (

//input data
input [7:0] Address, //endereco recebido
input [7:0] MemData, //dado disponibilizado saida
input [7:0] DataIn, //dato de entrada

//output signal
output reg [7:0] RegData);
//reg [7:0] register
always@(*)begin
	if(Address == 8'hFF)begin
		RegData = DataIn;
	end
	else if(Address != 8'hFF)begin
		RegData = MemData;
	end
	end
endmodule
