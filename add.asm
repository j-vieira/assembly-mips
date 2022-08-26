.data
	numeroUm: .word 10
	numeroDois: .word 15
.text
	lw $t0, numeroUm
	lw $t1, numeroDois
	add $s0, $t0, $t1
	addi $s1, $s0, 100
	addi $s2, $s1, -200