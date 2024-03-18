`default_nettype none //Comando para desabilitar 
module Mod_Teste (
//Clocks
input CLOCK_27, CLOCK_50,
//Chaves e Botoes
input [3:0] KEY,
input [17:0] SW,
//Displays de 7 seg e LEDs
output [0:6] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7,
output [8:0] LEDG,
output [17:0] LEDR,
//Serial
output UART_TXD,
input UART_RXD,
inout [7:0] LCD_DATA,
output LCD_ON, LCD_BLON, LCD_RW, LCD_EN, LCD_RS,
//GPIO
inout [35:0] GPIO_0, GPIO_1
);
assign GPIO_1 = 36'hzzzzzzzzz;
assign GPIO_0 = 36'hzzzzzzzzz;
assign LCD_ON = 1'b1;
assign LCD_BLON = 1'b1;
wire [7:0] w_d0x0, w_d0x1, w_d0x2, w_d0x3, w_d0x4, w_d0x5,
w_d1x0, w_d1x1, w_d1x2, w_d1x3, w_d1x4, w_d1x5;
LCD_TEST MyLCD (
.iCLK ( CLOCK_50 ),
.iRST_N ( KEY[0] ),
.d0x0(w_d0x0),.d0x1(w_d0x1),.d0x2(w_d0x2),.d0x3(w_d0x3),.d0x4(w_d0x4),.d0x5(w_d0x5),
.d1x0(w_d1x0),.d1x1(w_d1x1),.d1x2(w_d1x2),.d1x3(w_d1x3),.d1x4(w_d1x4),.d1x5(w_d1x5),
.LCD_DATA( LCD_DATA ),
.LCD_RW ( LCD_RW ),
.LCD_EN ( LCD_EN ),
.LCD_RS ( LCD_RS )
);

//---------- modifique a partir daqui --------

wire w_clock_1hz;
wire [3:0] w_cont;

wire [7:0] w_rd1SrcA; //saida de dados rd1
wire [7:0]  w_rd2; //entrada para o mux ed2
wire [7:0] w_SrcB; //saida do mux
wire [7:0] w_ULAResultWd3; //saida da ula
wire w_Zero;

assign LEDG[0]= w_clock_1hz;


/*questao 01 - active display 7 segment
assign HEX0[0] = SW[0];
assign HEX0[1] = SW[1];
assign HEX0[2] = SW[2];
assign HEX0[3] = SW[3];
assign HEX0[4] = SW[4];
assign HEX0[5] = SW[5];
assign HEX0[6] = SW[6];
*/
assign LEDG[8] = ~KEY[1];
assign LEDG[7] = ~KEY[2];
assign LEDG[6] = w_Zero; //atribui continuamente led 0 ao fio zero


//display 7 segmentos
DECOD_4x7 #(7) myDecod01( //estanciacao do modulo mux 

.i0(SW[3:0]), 
.out_decod(HEX0[0:6])
);

DECOD_4x7 #(7) myDecod02( //estanciacao do modulo mux 

.i0(SW[7:4]), 
.out_decod(HEX1[0:6])
);


//questao 03-c
/*DIV_freq myDiv_freq(
.speed_clock(CLOCK_50),
.low_clock(w_clock_1hz),
.reset(SW[17])
);
*/

/*questao 4
cont_number myCont(
.low_clock(w_clock_1hz),
.cont(w_cont)
);
*/
/*
DECOD_4x7 #(4) myDecod2( //estanciacao do modulo mux 

.i0(w_cont), 
.out_decod(HEX4[0:6])
);
*/

register_8BITS myReg( //estanciar registrador
.clock_reg(KEY[1]),	
.reset(KEY[2]),
.write_enable(1'b1),
.write_address(SW[16:14]),
.write_data(SW[7:0]),
.register_address1(SW[13:11]),
.register_address2(3'b010),
.register_data1(w_rd1SrcA),
.register_data2(w_rd2)


);

MUX_2X1 myMUX(
.i0(w_rd2),
.i1(8'h07),
.sel(SW[17]),
.out_mux(w_SrcB)

);

ULA myULA(
.SrcA(w_rd1SrcA),
.SrcB(w_SrcB),
.ULAControl(SW[10:8]),
.Zero(w_Zero),
.ULAResult(w_ULAResultWd3)
);
assign w_d0x0 = w_rd1SrcA;
assign w_d1x0 = w_rd2;
assign w_d1x1 = w_SrcB;
assign w_d0x4 = w_ULAResultWd3;

endmodule



//assign i0[7:0] = SW[7:0]
//assign i1[7:0] = SW[15:8]
//assign sel = SW[17]
//assign LEDR[7:0] = out[7:0]



