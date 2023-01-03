bits 64

; equ sig 'equal'
segment .data
  LF		equ 0xA  ; Line Feed, famosa quebra de linha
  NULL		equ 0xD  ; Final da String, famoso null byte, informando que acabei aquela string
  SYS_CALL	equ 0x80 ; Executando a syscall, e informando ao processador para executar este bloco de codigo
  ; EAX
  SYS_EXIT	equ 0x1  ; Syscall do Linux para o 'EXIT'
  SYS_READ	equ 0x3  ; Syscall do linux para o 'READ' ou seja entrada de Dados
  SYS_WRITE	equ 0x4	 ; Syscall do linux para o 'WRITE' ou seja saida de dados
  ; EBX
  RET_EXIT	equ 0x0  ; Retornando 0, estou informando para a syscall 'EXTI' que foi um sucesso o codigo
  STD_IN	equ 0x0  ; Entrada padrao
  STD_OUT	equ 0x1  ; Saida padrao
  STD_ERR	equ 0x2  ; Error padrao

section .data
  x: dd 10 ; Double Word -> 4Bytes
  y: dd 50
  msg_1: db 'X maior que Y', LF, NULL
  tam_1: equ $- msg_1
  msg_2: db 'Y maior que X', LF, NULL
  tam_2: equ $- msg_2

section .text

global _start
_start:
  mov EAX, DWORD[x]
  mov EBX, DWORD[y]
  cmp EAX, EBX
  jge .maior		; EAX >= EBX
  mov ECX, msg_2
  mov EDX, tam_2
  jmp .final

.maior:
  mov ECX, msg_1
  mov EDX, tam_1

.final:
  mov EAX, SYS_WRITE
  mov EBX, STD_OUT
  int SYS_CALL

  mov EAX, SYS_EXIT
  xor EBX, EBX
  int SYS_CALL

