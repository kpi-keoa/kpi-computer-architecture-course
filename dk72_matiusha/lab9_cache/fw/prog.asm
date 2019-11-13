; add r1, r0, 20     ; mov r1, 20 (size of array) 	0
; lsl r2, r1, 0x1d ; mov r2, int_min					1
; add r3, r2, -1     ; mov r3, int_max				2
; add r4, r0, r0      ; mov r4, 0						3

; iter:
; lw r5, [r4 +0]       ; lw r5, [r4]					4
; slt r6, r5, r3      ; r6 = (r5 < r3) ? 1 : 0		5
; slt r7, r2, r5      ; r7 = (r2 < r5) ? 1 : 0		6

; sub r6, r0, r6      ; r6 = (r5 < r3) ? ffffffff : 0	7
; sub r7, r0, r7      ; r7 = (r2 < r5) ? ffffffff : 0	8

; sub r8, r5,r3        ; r8 = r5 - r3				9
; sub r9, r5,r2        ; r9 = r5 - r2 			a	

; and r8,r6,r8        ; r8 = (r5<r3)?r5-r3:0 		b
; and r9,r7,r9        ; r8 = (r2<r5)?r5-r2:0 		c

; add r3,r3,r8 									;d
; add r2,r2,r9 									;e

; add r4, r4, 1     ; r4+=1 (point to next) 		f
; add r1, r1, -1    ; r1-=1 (dec size) 			10
; jnz iter 										;11
; lsl r0, r0, 0 									;12

; mull r4, r2, r3    ;sorry but mull=addu 		13
; mulh r5, r2, r3    ;sorry but mulh=subu 		14
; loop:  											;15
; jmp loop 										;16
; lsl r0, r0, 0              ; dummy instruction branch delay slot


;--------------------------------BLINK GPIO-----------------------
or r3, r0, 0x80
lsl r3, r3, 16
or r3, r3, 0x80
and r4, r3, 0xff7f
sw r4, [r0 +0x80]

readloop:
lw r1, [r0 +0x80]
lsr r1, r1, 0x8
and r1, r1, 0x1f
or r2, r0, 0x20
sub r2, r2, r1 
add r1, r1, 1

pwmp:
sw r3, [r0 +0x80]
sub r1, r1, 1
jnz pwmp
lsl r0, r0, r0 ;fugg branch delay slot

pwml:
sw r4, [r0 +0x80]
sub r2, r2, 1
jnz pwml
lsl r0, r0, r0 ;fugg branch delay slot

jmp readloop
lsl r0, r0, r0














