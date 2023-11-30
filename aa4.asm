.text	

.globl main

main: xor	$t0,$t0,$t0	## Variavel I
	la 	$t1,tam		
	lw	$t1, 0($t1)	
                      
	la	$t2, A		
	la	$t3, B	
	la	$t4, C	

loopAdd:
    lw $t5, 0($t2)  ## Aramzena os valores de A ($t2)
    lw $t6, 0($t3)  ## Armazena os valores de B ($t3)
    add $t7,$t5,$t6 ## Armazena o resultado de opera??es entre A e B.(soma ou subtra??o), e Armazena a soma dos valores positivos de A e B
    sw $t7, 0($t4)
    addi $t2,$t2,4
    addi $t3,$t3,4
    addi $t4,$t4,4
    addi $t0,$t0,1
    blt  $t0,$t1,loopAdd

xor	$t0,$t0,$t0
la	$t2, A		
la	$t3, B	
la	$t4, D

loopSub:
    lw $t5, 0($t2)  ## Aramzena os valores de A ($t2) 
    lw $t6, 0($t3)  ## Armazena os valores de B ($t3)
    sub $t7,$t5,$t6 ## Armazena o resultado de opera??es entre A e B.(soma ou subtra??o), e Armazena a soma dos valores positivos de A e B
    sw $t7, 0($t4)
    addi $t2,$t2,4
    addi $t3,$t3,4
    addi $t4,$t4,4
    addi $t0,$t0,1
    blt  $t0,$t1,loopSub

xor	$t0,$t0,$t0
la	$t4, C
xor	$t7,$t7,$t7

somaVaLPosiC:

    lw $t5, 0($t4)
    bge $t5,$zero,somaVaLPosiCaux
    addi $t4,$t4,4
    addi $t0,$t0,1
    blt  $t0,$t1,somaVaLPosiC

somaVaLPosiCaux:

    add $t7,$t7,$t5
    addi $t4,$t4,4
    addi $t0,$t0,1
    blt  $t0,$t1,somaVaLPosiC

xor	$t0,$t0,$t0
la	$t4, D
xor	$t8,$t8,$t8
somaValPosiD:
    lw $t5, 0($t4)
    bge $t5,$zero,somaVaLPosiDaux
    addi $t4,$t4,4
    addi $t0,$t0,1
    blt  $t0,$t1,somaValPosiD
somaVaLPosiDaux:

    add $t8,$t8,$t5
    addi $t4,$t4,4
    addi $t0,$t0,1
    blt  $t0,$t1,somaValPosiD
multiValPosi:
    mul $t9, $t7,$t8
    sw $t9,MP

end: j end

.data

tam: .word 5
A: .word 1 2 3 4 5
B: .word 6 7 8 9 1
C: .word 0x000 0x000 0x000 0x000 0x000 0x000 0x000 0x000
D: .word 0x000 0x000 0x000 0x000 0x000 0x000 0x000 0x000
MP: .word 0
