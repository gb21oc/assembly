bits 64
extern number

section .text

global assembly
assembly:
  call number
  add eax, 111
  ret
