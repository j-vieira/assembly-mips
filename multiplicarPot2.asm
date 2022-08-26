.data
	numeroUm: .word 12
.text:
	lw $t0, numeroUm
	sll $s1, $t0, 10 # multiplicar por 2^10
	li $v0, 1
	syscall