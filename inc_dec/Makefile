inc_dec: inc_dec.o
	ld -o inc_dec inc_dec.o

inc_dec.o: inc_dec.asm
	nasm -f elf64 -g -F stabs inc_dec.asm -l inc_dec.lst

all: inc_dec

clean:
	rm -f inc_dec.o inc_dec.lst inc_dec
