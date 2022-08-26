.data
	# area de dados na memoria principal
	msg: .asciiz "Ola, mundo!" #mensagem que sera exibida 
.text 
	#area para instrucoes do programa
	#instrucao para impressao de instring
	li $v0, 4 #instrucao pra imprimir string /$v0 -> retorna resultado de funcao
	la $a0, msg #indicar o endereco que esta a mensagem / $a0 -> argumento de funcao
	syscall #fazer, imprimir 