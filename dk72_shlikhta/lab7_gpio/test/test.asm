/*
This code controls the brightness of the LED using PWM, 
and displays the current duty cycle on the LED indicators
*/

add $r0 $r0 $r11
add $r0 $r15 255
add $r0 $r1 0b1111111111111111
sll $r1 $r1 16
or $r1 $r1 0b1111111100000000
sw $r0 $r1 128
lw $r0 $r2 129
add $r0 $r3 0
sll $r3 $r3 16
or $r3 $r3 0b0000000011111111
and $r2 $r3 $r2
bne $r11 $r2 1
j 29
add $r0 $r2 $r11
div $r2 $r4 100
rem $r2 $r6 100
div $r6 $r5 10
rem $r6 $r6 10
lw $r4 $r7 12
add $r0 $r8 0
sll $r7 $r7 22
or $r7 $r8 $r8
lw $r5 $r7 12
sll $r7 $r7 15
or $r7 $r8 $r8
lw $r6 $r7 12
sll $r7 $r7 8	
or $r7 $r8 $r8
sw $r0 $r8 130
add $r0 $r0 $r10
lw $r0 $r12 130
add $r0 $r13 0b111
sll $r13 $r13 29
or $r12 $r13 $r12
sw $r0 $12 130
j 43
lw $r0 $r12 130
add $r0 $r13 0b0001111111111111
sll $r13 $r13 16
or $r13 $r13 0b1111111111111111
and $r12 $r13 $r12
sw $r0 $12 130
j 47
add $r10 $r10 1
beq $r10 $r11 1
j 43
j 36
add $r10 $r10 1
beq $r10 $r15 1
j 47
j 6
