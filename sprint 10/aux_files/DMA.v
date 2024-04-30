//modulo que faz a leitura dos perifericos e envia diretamente para a memoria
module dma_controler( //DMA controler 
//input data
input clock_reg, //input clock
input reset, //reset module controler dma
input [7:0] dest_addr, //destine Adress 
input [7:0] data_input, //dado recebido pelo input paralelo

 
//output signal
output reg [7:0] data); //data output, signal star white memory

always@(posedge clock_reg or negedge reset)begin
	if(!reset) begin
		data <= 0; //atribuição não bloqueante
	end
	else if(dest_addr != 8'hFF) begin //evita que o indereço I/O seja usado
		data <= data_input; //dado do sensor vai para a memoria
	end
	
end
endmodule