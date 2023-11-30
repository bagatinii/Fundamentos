# Prof. Marlon Moraes
# marlon.moraes@pucrs.br

.text
	.globl inicio
	
# t0 = i
# t1 = tamanho do vetor.
# t2 = *vetor_dados
# t3 = vetor_dados[i]
# t4 = maior leitura.

				
inicio:	xor	$t0, $t0, $t0
		la	$t1, tamanho_vetor
		lw	$t1, 0($t1)

		la	$t2, vetor_dados
		lw	$t3, 0($t2)
		lw	$t4, 0($t2)
		
loop:		lw	$t3, 0($t2)
		
		blt	$t3, $t4, incrementa
		
		lw	$t4, 0($t2)		
		
incrementa:	addi	$t0, $t0, 1
		addi	$t2, $t2, 4

		blt	$t0, $t1, loop
		
		la	$t5, maior_valor
		sw	$t4, 0($t5)
		
fim:	j	fim


.data

tamanho_vetor:	.word		10
vetor_dados:	.word		54	23	120	14	50	100	1	300	140	-50
maior_valor:	.word		0
