twos_complement: twos_complement.o
	ld -o twos_complement twos_complement.o

twos_complement.o: twos_complement.asm
	nasm -f elf64 -g -F stabs twos_complement.asm -l twos_complement.lst

all: twos_complement

clean:
	rm -f twos_complement.o twos_complement.lst twos_complement