section .data
section .text

	global _start

_start:
	nop
;Put your experiments between the two nops...
	mov eax, 42
	; gets -42 in two's complement
	neg eax
	add eax, 42
;Put your experiments between the two nops...
	nop

section .bss
