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


00000100000000010000000000001000	//add $r0 $r1 8	load size of array to $r1
00000100000001110000000000000001	//add $r0 $r7 1	initialize of iterator
10010000000000100000000000000000	//lw $r0 $r2 0 	load a start value of min to $r2
10000000111000010000000000000110	//beq $r7 $r1 6 if iter = size of array exit from cycle
10010000111001010000000000000000	//lw $r7 $r5 0	load to $r5 a first element of array	
00000000101000100011000000010010	//slt $r5 $r2 $r6	compare a min and current element of array
10000000000001100000000000000001	//beq $r0 $r6 1	if cur_el < min
00000000000001010001000000000001	//add $r0 $r5 $r2	min = cur_el
00000100111001110000000000000001	//add $r7 $r7 1	else iterator++
10001100000000000000000000000011	//j 3				jump to 3rd instruction
00000100000001110000000000000001	//add $r0 $r7 1	initialize of iterator
10010000000000110000000000000000	//lw $r0 $r3 0 	load a start value of max to $r3
10000000111000010000000000000110	//beq $r7 $r1 6	if iter = size of array exit from cycle
10010000111001010000000000000000	//lw $r7 $r5 0	load to $r5 a first element of array	
00000000011001010011000000010010	//slt $r3 $r5 $r6	compare a max and current element of array
10000000000001100000000000000001	//beq $r0 $r6 1	if max < cur_el
00000000000001010001100000000001	//add $r0 $r5 $r3	max = cur_el
00000100111001110000000000000001	//add $r7 $r7 1	else iterator++
10001100000000000000000000001100	//j 12				jump to 12th instruction
00000000010000110101000000001101	//mul_h $r2 $r3 $r10
00000000010000110101100000001001	//mul_l $r2 $r3 $r11