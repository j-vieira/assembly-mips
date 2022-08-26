.data
	numeroUm: .word 12
	numeroDois: .word 10
.text
	lw $t0, numeroUm
	lw $t1, numeroDois
	mul $a0, $t0, $t1
	li $v0, 1
	syscall