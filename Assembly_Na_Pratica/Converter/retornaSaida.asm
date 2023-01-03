bits 64

segment .data
  LF         equ 0xA
  NULL       equ 0xD
  SYS_CALL   equ 0x80
  ; EAX
  SYS_EXIT   equ  0x1
  SYS_READ   equ  0x3
  SYS_WRITE  equ  0x4
  ; EBX
  RET_EXIT   equ  0x0
  STD_IN     equ  0x0
  STD_OUT    equ  0x1
  STD_ERR    equ  0x2
  ; My Var
  TAM_BUFFER equ 0xA

segment .bss
  BUFFER resb 0x1

segment .text

saidaResultado:
  mov EAX, SYS_WRITE
  mov EBX, STD_OUT
  mov ECX, BUFFER
  mov EDX, TAM_BUFFER
  int SYS_CALL
  ret
