.data
	saudacao: .asciiz "Coloque sua idade: "
	saida: .asciiz "Sua idade eh: "
.text
	li $v0, 4 #imprimir string
	la $a0, saudacao #load adress saudacao
	syscall
	
	li $v0, 5 #leitura de inteiros
	syscall 
	
	move $t0, $v0
	
	li $v0, 4
	la $a0, saida
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall