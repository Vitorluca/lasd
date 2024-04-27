init:
lb x1, 0xFF(x0)     #Carrega a entrada paralela no registrador 1
sb x1, 0xFF(x0)     #Salva o registrador 1 na saída paralela
beq x0, x0, init    ##Reinicia o laço



