bits 32

section .data
    texto: db 'Hello, World', 0xa

global _main

section .text

_main:
	mov eax, 4
	mov ebx, 1
	mov ecx,  texto
	mov edx, 13
	int 0x80

	mov eax, 1
	mov ebx, 0
	int 0x80
