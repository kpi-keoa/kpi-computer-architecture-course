./assembler/ex prog.asm | grep OPCODE | awk '{print $2}' | tee memfile.dat
