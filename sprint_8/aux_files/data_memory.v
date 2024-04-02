//memory ram processor RISC-V
module DATA_MEMORY(

//input data
input clk, //clock da memoria
input rst, //reseta a memoria
input WE, //ativa a escrita da memoria
input [7:0] WD,//entrada de dados da memoria
input [7:0] A,//entrada de indereco de memoria

 
//output signal - saida de dados de memoria(leitura):RD
output [7:0] RD/*,
output reg x0,x1,x2,x3,x4,x5,x6,x7*/);

reg [7:0] register [255:0];//array bidimencional array de 8bits com 256 palavras
integer j;//variavel contador usada no loop integer(32 bits) e usado em loops e conts

//fornesse a saida de maneira combinacional
assign RD = register[A];
 
always@(posedge clk or negedge rst)begin
	if(!rst) begin
		for(j = 0; j < 256; j = j + 1) begin
			register[j] <= 8'b00000000; //zera a memoria ram
			//$display("interator J: $d", j);
		end
		//codigo para resetar memoria
	end		
	else if(WE == 1)begin
		register[A] <= WD; //escreve o novo dado
		register[0] <= 0; //register 0 deve ser igual a zero sempre
	end
		//register[1][register_address2] = write_data[write_address];
	
end
endmodule