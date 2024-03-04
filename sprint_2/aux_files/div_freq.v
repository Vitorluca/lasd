//questao 3
//questao 2-a e b
module DIV_freq #(parameter BITS=3/*desafio*/)(

//input data
input speed_clock, //input clock
reg [26:0] cont, //contador de pulsos
 
 
//output signal
output reg low_clock);
	always@(*)
		if(speed_clock == 0)
			cont = cont + 26'b00000000000000000000000001;
		else
			cont = cont + 26'b00000000000000000000000001;
			
		if(cont == 26'b01011111010111100001000000)
			cont = 26'b00000000000000000000000000;
			if(speed_clock == 0)
				low_clock = 1;
			else
				low_clock = 0;
				
	
endmodule
