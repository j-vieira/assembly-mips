.data
	vetor:
		.align 2  # vetor de inteiros
		.space 16 # espaco necessario pra esses elementos (16 bytes / 4 posicoes)
.text
	move $t0, $zero #indice do array
	move $t1, $zero #valor a ser colocado no array
	li $t2, 16 #tamanho do array
	
	loop:
		beq $t0, $t2, saiDoLoop #enquanto t0<16 / else -> sai do loop
		sw $t1, vetor($t0)
		addi $t0, $t0, 4 # indices de 4 em 4 (tamanho int)
		addi $t1, $t1, 1 # valor que colocamos no array
		j loop
	
	saiDoLoop:
		move $t0, $zero
		imprime:
			beq $t0, $t2, saiDaImpressao # t0<t2? else -> saiDaImpressao 
			li $v0, 1
			lw $a0, vetor($t0)
			syscall
			
			addi $t0, $t0, 4
			j imprime
		
		saiDaImpressao:
					
