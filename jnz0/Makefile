jnz0: jnz0.o
	ld -o jnz0 jnz0.o

jnz0.o: jnz0.asm
	nasm -f elf64 -g -F stabs jnz0.asm -l jnz0.lst

all: jnz0

clean:
	rm -f jnz0.o jnz0.lst jnz0