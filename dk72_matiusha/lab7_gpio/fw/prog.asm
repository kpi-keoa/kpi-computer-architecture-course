OP_ORI REG0 REG3 0000000010000000
OP_LSLI REG3 REG3 0000000000010000
OP_ORI REG3 REG3 0000000010000000 //reg3 = conf port7 to out, port7=1
OP_ANDI REG3 REG4 1111111101111111 // port preparations
OP_SW REG0 REG4 0000000010000000 // port7 out 0

OP_LW REG0 REG1 0000000010000000 // R1=GPIOIN
OP_LSRI REG1 REG1 0000000000001000 //r1>>8; -- pin register in lsb
OP_ANDI REG1 REG1 0000000000011111 // r1 &=0xff = get pinp 5 bits low

OP_ORI REG0 REG2 0000000000100000 // r2 = bts(bits+1)
OP_R REG2 REG1 REG2 SH0 FUNC_SUB // r2-=r1
OP_ADDI REG1 REG1 0000000000000001

//LABEL LOOPH here
OP_SW REG0 REG3 0000000010000000 //PORT7=1
OP_SUBI REG1 REG1 0000000000000001 // r1--
OP_J OP_REL OP_INV COND_Z 11111111111111111111111110

OP_SW REG0 REG4 0000000010000000 // PORT7=0
OP_SUBI REG2 REG2 0000000000000001 // r1--
OP_J OP_REL OP_INV COND_Z 11111111111111111111111110


OP_J OP_ABS OP_INV COND_Z 00000000000000000000000101 // infinite loop (i hate absolute addressing)