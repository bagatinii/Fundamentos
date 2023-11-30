# Marlon Moraes
# marlon.moraes@pucrs.br

# for(i=0; i<n; i++) # a[i] = b{i} + 10

.text
	.globl	main		# onde o código inicia.
	
main:	xor	$t0,$t0,$t0	# zera o $t0=(i)
	la 	$t1,n		# $t1 recebe o endereço de n.
	lw	$t1, 0($t1)	# $t1 recebe o valor de n.

	la	$t2, a		#$t2 recebe o endereço base do vetor a.
	la	$t3, b		#$t3 recebe o endereço base do vetor b.

loop:	lw	$t4, 0($t3)	# busca na memoria b[i]
	addi	$t4, $t4, 10	# b[i]=b[i]+10
	sw	$t4, 0($t2)	# armazena em a[i] = b[i] + 10
	
	addi	$t0,$t0,1	#incrementa o (i)
	addi	$t2,$t2,4	# incrementa o endereço de a (+4 porque é uma word)
	addi	$t3,$t3,4	# incrementa o endereço de a (+4 porque é uma word)
	blt	$t0, $t1, loop	# pula para o "loop" se i < n ($t0 < $t1)

end:	j	end


.data

n:	.word	5
a:	.word	0x001	0x002	0x003	0x004	0x005
b:	.word	0x300	0x400	0x500	0x600	0x700