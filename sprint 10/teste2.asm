#codigo de teste 2
init:
lb x1, 0xFF(x0) #carrega o dado da entrada paralela 
addi x2, x0, 1 #adiciona 1 ao reg x2
and x3, x1, x2 #and entre o 1 e o bit menos siginificativo de x1
beq x3,x2, impar
beq x3, x0, par
#beq x0, x0, init

impar:
sb x0, 0xFF(x0) #armazena 0 na saida paralela se impar 
beq x0,x0, init

par:
sb x2, 0xFF(x0)
beq x0,x0, init