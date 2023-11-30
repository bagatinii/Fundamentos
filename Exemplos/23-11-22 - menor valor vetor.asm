# Prof. Marlon Moraes
# marlon.moraes@pucrs.br

.text
.globl	inicio

# legenda do registradores.

# t0 = k
# t1 = i
# t2 = *vetor
# t3 = vetor[i]
# t4 = menor
# t5 = *menor 


inicio:	la	$t0, k		# lê o endereço de k.
		lw	$t0, 0($t0)		# lê o conteúdo de k.

		xor	$t1, $t1, $t1	# inicia i = 0
		la	$t2, vetor		# *vetor (endereço do vetor). 

		lw 	$t4, 0($t2)		# menor = vetor[0]


loop:		lw	$t3, 0($t2)		# vetor[i]

		bgt	$t3, $t4, incremento	# se vetor[i]<menor pula para "incremento". 
		move	$t4, $t3		# copia para menor o valor de vetor[i].

incremento:	addi	$t1, $t1, 1		# i++.
		add	$t2, $t2, 4		# incrementa o *vetor

		blt	$t1, $t0, loop	# se i < k volta para "loop".

		la	$t5, menor		
		sw	$t4, 0($t5)

fim:	j	fim


.data

k:		.word	10	# tamanho do vetor
menor:	.word 0	# menor valor do vetor.
vetor:	.word	100	400	330	2	500	250	20	650	700	940	 
