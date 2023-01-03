bits 64

%include "retornaSaida.asm"

section .text

global _start
_start:
  lea ESI, [BUFFER]
  add ESI, 0x9
  mov byte[ESI], 0xA

  dec ESI
  mov DL, 0x52 ; 0x52: R  'A': 0x11 / 'a': 0x31
  ; add DL, '0'
  mov [ESI], DL

  dec ESI
  mov DL, 0x45  ; 0x45: E
  mov [ESI], DL

  dec ESI
  mov DL, 0x46  ; 0x46: F
  mov [ESI], DL

  dec ESI
  mov DL, 0x49  ; 0x49: I
  mov [ESI], DL

  dec ESI
  mov DL, 0x4e  ; 0x4e: N
  mov [ESI], DL

  dec ESI
  mov DL, 0x4e  ; 0x4e: N
  mov [ESI], DL

  dec ESI
  mov DL, 0x45  ; 0x45: E
  mov [ESI], DL

  dec ESI
  mov DL, 0x4a   ; 0x4a: J
  mov [ESI], DL

  call saidaResultado

  mov EAX, SYS_EXIT
  mov EBX, RET_EXIT
  int SYS_CALL
