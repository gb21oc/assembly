bits 32

section .data
   texto: db 'Hello, World'

global _main

section .text

_main:
  mov eax, 4
  mov ebx, 1
  mov ecx, texto
  mov edx, 12
  int 0x80
  ret
