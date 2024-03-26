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
output [7:0] register_data1,register_data2,
output [7:0] x0,x1,x2,x3,x4,x5,x6,x7);


reg [7:0] register [7:0];
always@(posedge clock_reg or negedge reset)begin
	if(!reset) begin
		register[0] <= 0;
		register[1] <= 0;
		register[2] <= 0;
		register[3] <= 0;
		register[4] <= 0;
		register[5] <= 0;
		register[6] <= 0;
		register[7] <= 0;
	end		
	else if(write_enable == 1)begin
		register[write_address] <= write_data;
		register[0] <= 0; //register 0 deve ser igual a zero
	end
		//register[1][register_address2] = write_data[write_address];

	
end


assign x0 = register[0];
assign x1 = register[1];
assign x2 = register[2];
assign x3 = register[3];
assign x4 = register[4];
assign x5 = register[5];
assign x6 = register[6];
assign x7 = register[7];
		
assign register_data1 = register[register_address1];
assign register_data2 = register[register_address2];

endmodule