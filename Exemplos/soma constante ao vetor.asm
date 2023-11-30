# Marlon Moraes
# marlon.moraes@pucrs.br
# for(i=0;i<n;i++) a[i]=b[i]+10

# la e blt pseudo-instruções.
#

.text
	.globl	main
	
main:	xor	$t0,$t0,$t0			# zera o 'i'.
	la	$t1,n					# $t0: variavel i.	
	lw	$t1,0($t1)				# $t1: variavel n.
	
	la	$t2,a					# $t2: ponteiro para o vetor a.
	la	$t3,b					# $t3: ponteiro para o vetor b.
	
loop:	lw		$t4,0($t3)		# busca na memoria b[i].
		addi	$t4,$t4,10		# calcula b[i]=b[i]+10
		sw		$t4,0($t2)		# armazena em a[i] = b[i]+10 (na memória)
		addi	$t0,$t0,1		# incrementa i
		addi	$t2,$t2,4		# incrementa *a (+4 pois é word)
		addi	$t3,$t3,4		# incrementa *b (+4 pois é word)
	
		blt	$t0,$t1,loop		# loop se i < n
	
end:	j	end
	
.data
n:	.word	5
a:	.word	0x000 0x000 0x000 0x000 0x00
b:	.word	0x300 0x400 0x500 0x600 0x70
