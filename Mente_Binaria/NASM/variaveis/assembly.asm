bits 64

global myvar
section .data
    myvar: dd 777

section .text


global assembly
assembly:
    add dword [myvar], 3
    ret
