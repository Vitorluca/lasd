
module DIV_freq(

//input data
input speed_clock, //input clock //contador de pulsos
input reset, 
 
//output signal
output reg low_clock);
reg [26:0] cont;
	always@(posedge speed_clock or negedge reset)begin
			if(!reset)
				cont <= 0;
			else begin
				cont <= cont + 1;
			
			if(cont == (25000000/10) - 1) begin //update frequencia
				low_clock <= ~low_clock;
				cont <= 0;
				
			end
		end
	end	
endmodule
