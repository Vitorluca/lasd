//questao 4
module cont_number(

//input data
input low_clock, //input clock //contador de pulsos
 
//output signal
output reg [3:0] cont);
	initial cont = 0;
	always@(posedge low_clock)begin
		cont = cont + 1;
		if(cont > 9)
			cont = 0;
				
		end	
endmodule
