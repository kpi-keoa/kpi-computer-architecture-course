#@;sort vals in dmem
.set noat

.L0:
addi $1, $0, 20     # mov r1, 20 (size of array) 
sll $2, $1, 0b11101 # mov r2, int_min
addi $3, $2, -1     # mov r3, int_max	
add $0, $0, $4      # mov r4, 0	

.iter:
lw $5, ($4)         # lw r5, [r4]
slt $6, $5, $3      # r6 = (r5 < r3) ? 1 : 0
slt $7, $2, $5      # r7 = (r2 < r5) ? 1 : 0

sub $6, $0, $6      # r6 = (r5 < r3) ? ffffffff : 0
sub $7, $0, $7      # r7 = (r2 < r5) ? ffffffff : 0

sub $8,$5,$3        # r8 = r5 - r3
sub $9,$5,$2        # r9 = r5 - r2

and $8,$6,$8        # r8 = (r5<r3)?r5-r3:0
and $9,$7,$9        # r8 = (r2<r5)?r5-r2:0

add $3,$3,$8
add $2,$2,$9

addi $4, $4, 1     # r4+=1 (point to next)
addi $1, $1, -1    # r1-=1 (dec size)
add $0,$0,$0       # dummy instruction branch delay slot
bne $0, $1, .iter

addu $4, $2, $3    #sorry but mull=addu 
subu $5, $2, $3    #sorry but mulh=subu
.loop: j .loop
nop                # dummy instruction branch delay slot

