lw $r0, $t0, 0        / load first item of array (it will our min)
add $r0, $t1, 5       / install counter
add $r0, $t2, 1       / initialization of iterator
beq $t2, $t1, 10      / if true break 
lw $t1, $t3, 0        / load our arry item
slt $t3, $t0, $t4     / compare elements
beq $r0, $t4, 2       / if x < min, jump to 2
add $r0, $t3, $t0     / new min
j 2

lw $r0, $t5, 0        / load first item off arry, it will be our max
xor $t2, $t2, $t2     / set zero to  
add $r0, $t2, 1       / set iterator
beq $t2, $t1, 12      
lw $r0, $t2, 0
slt $t3, $t0, $t4
bne $r0, $t4, 12
add $r0, $t3, $t0
j 12

mul $t0, $t5, $t6
