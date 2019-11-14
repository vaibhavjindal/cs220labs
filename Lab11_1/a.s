		.data
msg:	.asciiz ","
msg2:	.asciiz "Error! Invalid input.\n"

		.text
		.globl main

main:	li $v0,5
		syscall
		bltz $v0,error
		beq $0,$v0,zero
		addi $t1,$0,1
		beq $t1,$v0,one
		add $t0,$0,$0
		addi $t2,$v0,-1
		add $a0,$0,$0
		li $v0,1
		syscall
		li $v0,4
		la $a0,msg
		syscall
		addi $a0,$0,1
		li $v0,1
		syscall
loop:	li $v0,4
		la $a0,msg
		syscall
		li $v0,1
		add $a0,$t0,$t1
		syscall
		add $t0,$t1,$0
		add $t1,$a0,$0
		addi $t2,$t2,-1
		bne $t2,$0,loop
		jr $ra

zero:	add $a0,$v0,$0
		li $v0,1
		syscall
		jr $ra

one:	add $a0,$0,$0
		li $v0,1
		syscall
		li $v0,4
		la $a0,msg
		syscall
		addi $a0,$0,1
		li $v0,1
		syscall
		jr $ra

error:	li $v0,4
		la $a0,msg2
		syscall
		jr $ra
		
