xor $s0, $s0, $s0		

addi $s1, $0, 1		#Ai

addi $s2, $0, 1		#Bi

addi $s3, $0, 1		#Ci

addi $s4, $0, 1		#Di

addi $t0, $0, 1		#temp



addi $s5, $0, 21	



loop:

	beq $s1, $s5, end	

	mult $s1, $s2	

	mflo $t1		

	mult $t1, $s3	

	mflo $t1		

	mult $t1, $s4	

	mflo $t1		

	add $s0, $s0, $t1	

sdarot:

	addi $s1, $s1, 2	

	addi $t0, $t0, 1 	

	add $s2, $s2, $t0	

	sll $s3, $s3, 2	

	nor $s4, $s4, $0	

	addi $s4, $s4, 1	

	j loop

end: