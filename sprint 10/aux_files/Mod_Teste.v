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

//wire w_clock_1hz;
wire w_clock_2hz;
wire [3:0] w_cont;

//ula
wire w_ULASrc; //define se ovalor vem de registrador ou de constante
wire [2:0] w_ULAControl;//define qual operacao da ula sera executada
wire [7:0] w_rd1SrcA; //saida de dados rd1
wire [7:0]  w_rd2; //entrada para o mux ed2
wire [7:0] w_SrcB; //saida do mux
wire [7:0] w_ULAResult; //saida da ula
wire w_Zero;

//program couter
wire [7:0] w_PC; //fio de saida PC
wire [7:0] w_PCp4; // entrada do program counter

//registrador
wire w_RegWrite;

//memory instruction
wire [31:0] w_Inst;//instrucao em linguagem de maquina

//unit control 
wire [1:0] w_ImmSrc;
wire w_MemWrite;
wire w_ResultSrc;

wire [7:0] w_Wd3;
wire [7:0] w_Imm;
wire [7:0] w_RData;

//fios sprint 7
wire w_PCSrc;
wire w_Branch;

wire [7:0] w_ImmPC;
wire [7:0] w_PCn;

//paralelo output
wire [7:0] w_DataOut;

//paralelo input
wire [7:0] w_DataIn;
wire [7:0] w_RegData;

//DMA wires
wire [7:0] w_A_DMA; //fio do indereco para armazenamento na memoria 
wire [7:0] w_WD_DMA;  //dato para ser armazenado na memoria
wire [7:0] w_dest_addr;//fio do endereço de destino

assign LEDG[0]= w_clock_2hz; // led clock divisor de frequencia 


assign LEDG[8] = ~KEY[1]; // clock led
assign LEDG[7] = ~KEY[2]; // reset led
assign LEDG[6] = w_Zero; //Z ula led


//displays 7 segmentos
DECOD_4x7 #(7) myDecod00( //estanciacao do modulo mux 

.i0(w_Inst[3:0]), 
.out_decod(HEX0[0:6])
);

DECOD_4x7 #(7) myDecod01( //estanciacao do modulo mux 

.i0(w_Inst[7:4]), 
.out_decod(HEX1[0:6])
);

DECOD_4x7 #(7) myDecod02( //estanciacao do modulo mux 

.i0(w_Inst[11:8]), 
.out_decod(HEX2[0:6])
);

DECOD_4x7 #(7) myDecod03( //estanciacao do modulo mux 

.i0(w_Inst[15:12]), 
.out_decod(HEX3[0:6])
);

DECOD_4x7 #(7) myDecod04( //estanciacao do modulo mux 

.i0(w_Inst[19:16]), 
.out_decod(HEX4[0:6])
);

DECOD_4x7 #(7) myDecod05( //estanciacao do modulo mux 

.i0(w_Inst[23:20]), 
.out_decod(HEX5[0:6])
);

DECOD_4x7 #(7) myDecod06( //estanciacao do modulo mux 

.i0(w_Inst[27:24]), 
.out_decod(HEX6[0:6])
);

DECOD_4x7 #(7) myDecod07( //estanciacao do modulo mux 

.i0(w_Inst[31:28]), 
.out_decod(HEX7[0:6])
);

register_8BITS myReg( //estanciar registrador
//input
.clock_reg(w_clock_2hz/*KEY[1]*/), //trocar clock para 1 Hz
.reset(KEY[2]),
.write_enable(w_RegWrite),
.write_address(w_Inst[11:7]),
.write_data(w_Wd3),
.register_address1(w_Inst[19:15]),
.register_address2(w_Inst[24:20]),

//output
.register_data1(w_rd1SrcA),
.register_data2(w_rd2),
.x0(w_d0x0),
.x1(w_d0x1),
.x2(w_d0x2),
.x3(w_d0x3),
.x4(w_d1x0),
.x5(w_d1x1),
.x6(w_d1x2),
.x7(w_d1x3)
);

MUX_2X1 MuxULASrc( //MUX da ULA
//input 
.i0(w_rd2),
.i1(w_Imm),
.sel(w_ULASrc),

//output
.out_mux(w_SrcB)

);

MUX_4X1 #(12) MuxImmSrc( //MUX4x1 da instrucao tipo I
//input
.i0(w_Inst[31:20]),
.i1({w_Inst[31:25], w_Inst[11:7]}), //concatena os dados
.i2({ w_Inst[7], w_Inst[30:25], w_Inst[11:8],1'b0}),

.sel(w_ImmSrc),

//output
.out_mux(w_Imm)

);

MUX_2X1 MuxResSrc( //define se o dado usado e o armazenado na memoria
//input
.i0(w_ULAResult),
.i1(w_RegData),
.sel(w_ResultSrc),

//output
.out_mux(w_Wd3)

);

MUX_2X1 MuxPCSrc( //fonte do dado do program counter - PC
//input
.i0(w_PCp4),
.i1(w_ImmPC),

.sel(w_PCSrc),

//output
.out_mux(w_PCn)

);



ULA myULA(
.SrcA(w_rd1SrcA),
.SrcB(w_SrcB),
.ULAControl(w_ULAControl),
.Zero(w_Zero),
.ULAResult(w_ULAResult)
);

assign w_d0x4 = w_PC;//atribui continuamente o valor W_PC ao LCD

CONTROL_UNIT my_unit_control(
//input
.OP(w_Inst[6:0]),
.Funct3(w_Inst[14:12]),
.Funct7(w_Inst[31:25]),

//output
.ULAControl(w_ULAControl),
.ULASrc(w_ULASrc),
.RegWrite(w_RegWrite),
.ImmSrc(w_ImmSrc),
.MemWrite(w_MemWrite),
.ResultSrc(w_ResultSrc),
.Branch(w_Branch)
);

//define operation for ula 
assign LEDR[0] = w_ULAControl[0];
assign LEDR[1] = w_ULAControl[1];
assign LEDR[2] = w_ULAControl[2];

assign LEDR[3] = w_ULASrc; //sinal seletor do mux
assign LEDR[4] = w_RegWrite; // signal enable for register

assign LEDR[5] = w_ImmSrc[0]; //seletor do MUX MuxImmSrc
assign LEDR[6] = w_ImmSrc[1]; //seletor do MUX MuxImmSrc

assign LEDR[7] = w_MemWrite;//ativa a memoria ram 
assign LEDR[8] = w_ResultSrc;//define a origem dos dados armazenados no register
assign LEDR[9] = w_Branch; //sinal de mudança de fluxo

//armazena o programa que vai ser executado
INSTRUCTION_MEMORY my_instruction_memory( 
//input
.A(w_PC), //define qual parte do codigo vai ser executada

//output
.RD(w_Inst) //instrucao de memoria que define quais funcoes serao executadas
);

//somador - move o indereco para o indereco da proxima instrucao
ADDER_4 my_adder(
//input
.DATA_ADDER(w_PC),//indereco da instrucao atual

//output
.out_adder(w_PCp4) //indereco da intrucao seguinte
);

ADDER_8 myadder8(
//inputs
.DATA_ADDER0(w_Imm),
.DATA_ADDER1(w_PC),

//outputs
.out_adder(w_ImmPC)
);

//define o indereco da proxima intrucao executa na intruction memory
PROGRAM_COUNTER_8 my_program_counter(
//input
.clock_reg(w_clock_2hz/*KEY[1]*/),
.reset(KEY[2]),
.PCin(w_PCn),

//output
.PC(w_PC)
);

DATA_MEMORY my_data_memory(
//inputs
.clk(w_clock_2hz/*KEY[1]*/),
.rst(KEY[2]),
.WE(w_MemWrite),
.WD(w_rd2),
.A(w_ULAResult),
.start_DMA(1'b1), //escrita sempre ativa para o DMA
.WD_DMA(w_WD_DMA),
.A_DMA(w_A_DMA),

//outputs
.RD(w_RData)	
);

//divisor de frequencia
DIV_freq myDiv_freq(
//inputs
.speed_clock(CLOCK_50),
.reset(KEY[2]),

//outputs
.low_clock(w_clock_2hz)
);

AND2X1 myAND(
//inputs
.i0(w_Branch),
.i1(w_Zero),

//outputs
.out_and(w_PCSrc)
);

Parallel_OUT my_parall_out(
//inputs
.EN(w_MemWrite),
.Address(w_ULAResult),
.RegData(w_rd2),
.clk(w_clock_2hz),
.rst(KEY[2]),

//output
.DataOut(w_DataOut)//saida de dados
);

assign w_d1x4 = w_DataOut; //atribuicao continua display

Parallel_IN my_parall_in(
//inputs
.Address(w_ULAResult),
.MemData(w_RData),
.DataIn(w_DataIn),

//output
.RegData(w_RegData)//saida de dados
);

assign w_DataIn = SW[7:0]; //atribuicao continua chave input paralelo


dma_controler my_dma_controler(
//inputs
.clock_reg(w_clock_2hz),
.reset(KEY[2]),
.dest_addr(w_A_DMA),//indereço da memoria
.data_input(w_DataIn),//dado de entrada

//output
.data(w_WD_DMA) //dado de saida
);

ADDER_4 dma_adder(
//input
.DATA_ADDER(w_dest_addr),//indereco da instrucao atual

//output
.out_adder(w_A_DMA) //indereco da intrucao seguinte
);



endmodule




