jnz_lowercase: jnz_lowercase.o
	ld -o jnz_lowercase jnz_lowercase.o

jnz_lowercase.o: jnz_lowercase.asm
	nasm -f elf64 -g -F stabs jnz_lowercase.asm -l jnz_lowercase.lst

all: jnz_lowercase

clean:
	rm -f jnz_lowercase.o jnz_lowercase.lst jnz_lowercase