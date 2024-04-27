//memory ram processor RISC-V
module DATA_MEMORY(

//input data
input clk, //clock da memoria
input rst, //reseta a memoria
input WE, //ativa a escrita da memoria
input [7:0] WD,//entrada de dados da memoria
input [7:0] A,//entrada de indereco de memoria

 
//output signal - saida de dados de memoria(leitura):RD
output reg [7:0] RD,output reg x0,x1,x2,x3,x4,x5,x6,x7);

reg [7:0] register [255:0];//array bidimencional array de 8bits com 256 palavras
reg j;//varia usada no loop
always@(*)begin
	RD = register[A];
end
 
always@(posedge clk or negedge rst)begin
	if(!rst) begin
		j = 0;
		for (j = 0; j < 256; j = j + 1) begin
			register[j] = 8'b00000000; //zera a memoria ram
		end
		//codigo para resetar memoria
	end		
	else if(WE == 1)begin
		register[A] = WD; //escreve o novo dado
		register[0] = 0; //register 0 deve ser igual a zero sempre
	end
		//register[1][register_address2] = write_data[write_address];
		x0 = register[0];
		x1 = register[1];
		x2 = register[2];
		x3 = register[3];
		x4 = register[4];
		x5 = register[5];
		x6 = register[6];
		x7 = register[7];
	
end
endmodule