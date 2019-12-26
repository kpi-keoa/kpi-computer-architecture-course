; ;	// // 1 7leg ddr to 1
; 	// //2 7leg af to pwmb thats 0b10 << 14 = 1<<15 = 8000, pwmc 11 << 12 thats b000
; 	// //3 extclk to 0 (later)
; 	// //4 write ocra ocrb
; 	// //5 launch timer with CLKSRC, PWMB, TOP_OCRA = 
; {extclk_select, PRESCALE, CLKSRC, INTOE, INTCE, INTBE, INTAE, PCI, PEC, PBI, PEB, PAI, PEA, DIR, TOPVAL, CNTEN} =  100 0011 0100 0011

add r3, r0, 0xc0
sw r3, [r0 +0x80];ddr6,7=1
add r3, r0, 0xb000
sw r3, [r0 +0x83];af1 = 7b 6cinv
add r3, r0, 0x8 
sw r3, [r0 +0x86];ocra=8
add r3, r0, 0x2
sw r3, [r0 +0x87];ocrb,c=2
add r3, r3, 0x1
sw r3, [r0 +0x88]
add r3, r0, 0x4343
sw r3, [r0 +0x89]
halt:
jmp halt
