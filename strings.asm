.data
	pergunta: .asciiz "Qual eh seu nome?"
	saudacao: .asciiz "Ola, "
	nome: .space 25
.text:
	#imprimir pergunta
	li $v0, 4
	la $a0, pergunta
	syscall
	
	#leitura nome
	li $v0, 8
	la $a0, nome
	la $a1, 25
	syscall
	
	li $v0, 4
	la $a0, saudacao
	syscall
	
	li $v0, 4
	la $a0, nome
	syscall