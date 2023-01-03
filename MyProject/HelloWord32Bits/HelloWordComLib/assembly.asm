bits 32

%include "libs_32.asm"

section .data
   msg: db "Hello Word", 0xA, 0xD

section .text

global _start
_start:
   lea ESI, [BUFFER]
   mov ESI, msg
   call myWrite

   mov EAX, 0x1 
   mov EBX, 0x0
   int SYS_CALL

