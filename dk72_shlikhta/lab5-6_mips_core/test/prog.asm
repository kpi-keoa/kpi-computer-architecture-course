add $r0 $r1 8	//load size of array to $r1
add $r0 $r7 1	//initialize of iterator
lw $r0 $r2 0 	//load a start value of min to $r2

beq $r7 $r1 6
lw $r7 $r5 0	//load to $r5 a first element of array	
slt $r5 $r2 $r6	//compare a min and current element of array
beq $r0 $r6 1	//if cur_el < min
add $r0 $r5 $r2	//min = cur_el
add $r7 $r7 1	//else iterator++
j 3				//jump to 3rd instruction

add $r0 $r7 1	//initialize of iterator
lw $r0 $r3 0 	//load a start value of max to $r3

beq $r7 $r1 6
lw $r7 $r5 0	//load to $r5 a first element of array	
slt $r3 $r5 $r6	//compare a max and current element of array
beq $r0 $r6 1	//if max < cur_el
add $r0 $r5 $r3	//max = cur_el
add $r7 $r7 1	//else iterator++
j 12			//jump to 12th instruction
mul_h $r2 $r3 $r10
mul_l $r2 $r3 $r11
