section .data
section .text

	global _start

_start:
	nop
;Put your experiments between the two nops...
;Set the EAX to 5
;Decrement till the result of the operation is 0
	mov eax, 5
DoMore:
	dec eax
	jnz DoMore
;Put your experiments between the two nops...
	nop

section .bss
