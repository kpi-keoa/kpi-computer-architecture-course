start:
add r1, r0, 20
lsl r2, r1, 0x1d
add r3, r2, -1
add r4, r0, r0

iter:
lw r5, [r4 +0]
slt r6, r5, r3
slt r7, r2, r5

sub r6, r0, r6
sub r7, r0, r7

sub r8, r5, r3
sub r9, r5, r2

and r8, r6, r8
and r9, r7, r9

add r3, r3, r8
add r2, r2, r9

add r4, r4, 1
add r1, r1, -1
jnz iter

mull r4, r2, r3
mulh r5, r2, r3
loop:
jmp loop
