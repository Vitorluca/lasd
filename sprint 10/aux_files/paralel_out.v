module Parallel_OUT (

//input data
input EN,//enable
input [7:0] Address, //endereco recebido
input [7:0] RegData, //dado disponibilizado saida

input clk,
input rst,

//output signal
output reg [7:0] DataOut);

reg [7:0] register;

always@(posedge clk or negedge rst)begin
	if(!rst) begin
		register <= 8'b00000000; //zera a memoria ram
		end		
	else if(EN == 1 & Address == 8'hFF)begin
		register <= RegData; //fonte de error
		DataOut <= register; 
	end
end

endmodule

