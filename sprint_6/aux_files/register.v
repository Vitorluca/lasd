module register_8BITS(

//input data
input clock_reg, //input clock
input reset, //reseta todos os registradores para 0
input write_enable, //ativa a leitura
input [2:0] write_address, //endereco do registrador
input [7:0] write_data, // dado
input [3:0]register_address1, // endereco do registrador para leitura
input [3:0]register_address2,

 
//output signal
output reg [7:0] register_data1,register_data2,output reg x0,x1,x2,x3,x4,x5,x6,x7);


reg [7:0] register [7:0];
always@(posedge clock_reg or negedge reset)begin
	if(!reset) begin
		register[0] = 0;
		register[1] = 0;
		register[2] = 0;
		register[3] = 0;
		register[4] = 0;
		register[5] = 0;
		register[6] = 0;
		register[7] = 0;
		
	end		
	else if(write_enable == 1)begin
		register[write_address] = write_data;
		register[0] = 0; //register 0 deve ser igual a zero
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
	
	  register_data1 = register[register_address1];
	  register_data2 = register[register_address2];
end
endmodule