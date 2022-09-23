atseret:
	addi $sp, $sp, -8	
	sw $ra, 4($sp)		
	sw $a0, 0($sp)		
	addi $t1, $0, 1		
	bne $a0, $t1, repeat	
	addi $v0, $0, 1		
	addi $sp, $sp, 8		
	jr $ra			

	repeat:
		addi $a0, $a0, -1	
		jal atseret	
		lw $a0, 0($sp)		
		lw $ra, 4($sp)		
		addi $sp, $sp, 8		
		mult $v0, $a0		
		mflo $v0			
		jr $ra
