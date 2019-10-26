section .data
section .text

	global _start

_start:
	nop
;Put your experiments between the two nops...
	mov eax, 0FFFFFFFFh
	mov ebx, 02Dh
	dec ebx
	inc eax
;Put your experiments between the two nops...
	nop

section .bss
