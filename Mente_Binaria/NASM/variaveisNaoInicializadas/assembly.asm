bits 64

global myVar
section .bss
    myVar: resb 1

section .text

global assembly
assembly:
    mov dword [myVar], 777
    ret
