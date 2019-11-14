		.data
arrayA:	.space 60
arrayB: .space 60
msg2:	.asciiz "Error! Invalid input.\n"

		.text
		.globl main

main:	li $v0,5
		syscall
		bltz $v0,error
		add $t0,$v0,$0  #t0==n
		add $t1,$v0,$0 #t1==n
		la $t2,arrayA
		la $t3,arrayB
loop1:	li $v0,6
		syscall
		mfc1 $t4,$f0
		sw $t4,0($t2)
		addi $t2,$t2,4
		addi $t0,$t0,-1
		bne $t0,$0,loop1
		add $t0,$0,$t1
		la $t2,arrayA
loop2:  li $v0,6
		syscall
		mfc1 $t4,$f0
		sw $t4,0($t3)
		addi $t3,$t3,4
		addi $t1,$t1,-1
		bne $t1,$0,loop2
		add $t1,$0,$t0
		la $t3,arrayB
		mtc1 $0,$f12
loop3:	lw $t4,0($t2)
		lw $t5,0($t3)
		addi $t2,$t2,4
		addi $t3,$t3,4
		addi $t0,$t0,-1
		mtc1 $t4,$f0
		mtc1 $t5,$f1
		mul.s $f2,$f0,$f1
		add.s $f12,$f2,$f12
		bne $t0,$0,loop3
		li $v0,2
		syscall
		jr $ra

error:	li $v0,4
		la $a0,msg2
		syscall
		jr $ra