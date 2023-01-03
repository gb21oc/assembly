bits 64

section .data
  texto: db "Hello, World x64", 0xa

global _main

section .text

_main:
  mov rax, 1
  mov rdi, 1
  mov rsi, texto
  mov rdx, 17
  syscall

  mov rax, 60
  mov rdi, 0
  syscall
