start:
add r2, r0, 20
add r3, r0, 30
call kek

jmp start


kek:
add r1, r2, r3
call lol
ret

lol:
add r1, r1, r1
ret
