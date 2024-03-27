#codigo sprint 7

addi x1, x0, 7
addi x3, x0, 3
#inicializa x1 com 7
#inicializa x3 com 3
init:
addi x2, x0, -1#inicializa o contador x2 com -1
incremento:
addi x2, x2, 1
slt x7, x2, x3
beq x1, x2, init
beq x0, x0, incremento #incrementa x2
#atualiza a saída x7
#se a condição de parada for atingida, reinicia a rotina
#caso contrário, volta para incrementar x2