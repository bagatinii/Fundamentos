# Prof. Marlon Moraes
# marlon.moraes@pucrs.br
# Exemplo 1 da Lista de Exercicios.

.text	

.globl inicio

inicio: xor 	$t0, $t0, $t0	# t0 = g = 0 (zerando os regs)
				xor 	$t1, $t1, $t1	# t1 = h = 0
				xor 	$t2, $t2, $t2	# t2 = f = 0		

				la		$t0, g				# le o endereço da variavel g.
				lw		$t0, 0($t0)		# le o conteudo da variavel g.

				la 		$t1, h				# le o endereço da variavel h.
				lw  	$t1, 0($t1)		# le o conteudo da variavel h.
		
				subi	$t2, $t1, 5		# t2 = (h-5).
				add		$t2, $t0, $t2 # t2 = g + (h-5).
			
				la		$t3, f				# le o endereço da variavel f.
				sw		$t2, 0($t3)		# salva na variavel g o valor de t2.
						
fim:		j	fim

.data
f:	.word	0
g:	.word	30
h:	.word	25