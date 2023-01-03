bits 64

; equ sig  'equal'

segment .data
  LF		equ 0xA  ; Line Feed, famosa quebra de linha kkk
  NULL		equ 0xD	 ; Final da String, famoso byte nulo, informando que eu acabei aquela string
  SYS_CALL	equ 0x80 ; Executando a syscall, e informando o processador para executar este bloco de codigo
  ; EAX
  SYS_EXIT	equ 0x1  ; Syscall do linux para o 'EXIT'
  SYS_READ	equ 0x3  ; Syscall do linux para 'READ' ou seja entrada de dados
  SYS_WRITE	equ 0x4  ; Syscall do linux para 'WRITE' ou seja escrita na tela
  ; EBX
  RET_EXIT      equ 0x0  ; Retorno 0, estou informando para a syscal 'EXIT' que foi um sucesso o codigo
  STD_IN	equ 0x0  ; Entrada padrao
  STD_OUT	equ 0x1  ; Saida Padrao
  STD_ERR	equ 0x2 ; Error padrao

section .data
  msg: db "Entre com seu nome:", LF, NULL
  tam: equ $- msg

section .bss
  name: resb 1

section .text

global _start

_start:
  mov EAX, SYS_WRITE
  mov EBX, STD_OUT
  mov ECX, msg
  mov EDX, tam
  int SYS_CALL

  mov EAX, SYS_READ
  mov EBX, STD_IN
  mov ECX, name
  mov EDX, 10
  int SYS_CALL

  mov EAX, SYS_WRITE
  mov EBX, STD_OUT
  mov ECX, name
  mov EDX, 10
  int SYS_CALL

  mov EAX, SYS_EXIT
  mov EBX, RET_EXIT
  int SYS_CALL
