lui $t0, 0x1002		
addi $t1, $0, 16		
xor $t2, $t2, $t2		

arr:
	beq $t1, $t2, done	
	lw $t3, 0($t0)	
	mult $t3, $t3	
	mfhi $t4		
	mflo $t5		
	add $s1, $s1, $t4	
	add $s2, $s2, $t5	
	addi $t0, $t0, 4	
	j arr	
done: