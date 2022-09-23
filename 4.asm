lui $t0, 0x1002		
xor $t1, $t1, $t1		
addi $t2, $0, 8		
xor $s1, $s1, $s1		

arr:
	beq $t1, $t2, done
	lw $t3, 0($t0)	
	mult $t3, $t3	
	mfhi $t4		
	bnez $t4, plus
	mflo $t4		
	mult $t3, $t4	
	mfhi $t4		
	bnez $t4, plus
	j cont
plus:
	addi $s1, $s1, 1	
cont:
	addi $t0, $t0, 4	
	addi $t1, $t1, 1	
	j arr
done:
