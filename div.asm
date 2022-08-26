.data
	numeroUm: .word 36
	numeroDois: .word 5
.text
    	lw $t0, numeroUm
    	lw $t1, numeroDois
	
	srl $s2, $t0, 2 # dividir por 2^2 o conteudo de t0 (numero 1) e salvar em s2
	
 	div $t0, $t1

   	mflo $s0
   	
   	mfhi $s1
#lo -> registrador com quociente / hi -> registrador do resto a / b <-> a=q.b+r