#!/bin/sh

mips-elf-as -mips32 -EL -O0 program.asm
mips-elf-objdump a.out -d | grep -P ":\t[0-9a-fA-F]{8}" | awk '{print $2}' > fw.txt

