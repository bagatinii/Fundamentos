# Prof. Marlon Moraes
# marlon.moraes@pucrs.br

# t0 = n
# t1 = i
# *vetor = t2
# *copia = t3

# vetor[i] = t4

.text 
	.globl inicio


inicio:		la		$t0, n				# carrega em t0 o endereço da variável n.
			lw		$t0, 0($t0)			# lê o conteudo da variável n, e salva dentro de t0.
		
			xor		$t1, $t1, $t1		# i=0.
		
			la		$t2, vetor			# carrega em t2 o endereço do vetor.
			la		$t3, copia			# carrega em t2 o endereço do vetor.


loop_for:	lw		$t4, 0($t2)			# salva em t4, o conteúdo do vetor relativo a posicao i.
			sw		$t4, 0($t3)			# salva em copia relativo a posicão i o valor de t4.

			addi	$t1, $t1, 1			# incrementa o contador i.		
			addi	$t2, $t2, 4			# incrementa o endereço de leitura do vetor.		
			addi	$t3, $t3, 4			# incrementa o endereço de escrita do copia.		

			
			blt 	$t1, $t0, loop_for	# se i < n retorna para a linha "loop_for".
			

end: j	end


.data
	n:		.word	10
	vetor:	.word	10	20	30	40	50	60	70	80	90	100
	copia:	.word	0	0	0	0	0	0	0	0	0	0	