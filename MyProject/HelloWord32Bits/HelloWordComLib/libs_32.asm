bits 32

segment .data
    LF:		   equ 0xA  ; Line Feed, quebra de linha
    NUL:L	   equ 0xD  ; Byte Nulo para adicionar no final da string
    SYS_CALL_32:   equ 0x80 ; SysCall para 32 bits
    ; EAX
    SYS_EXIT_32:   equ 0x1  ; Syscall para 'EXIT'
    SYS_READ_32:   equ 0x3  ; Syscall para 'READ'
    SYS_WRITE_32:  equ 0x4  ; Syscall para 'WRITE'
    ; EBX
    RET_EXIT_32:   equ 0x0  ; Retorno padrao para saida 0 no EXIT
    STD_IN_32:     equ 0x0  ; Entrada Padrao
    STD_OUT_32:    equ 0x1  ; Saida padrao
    STD_ERROR_32:  equ 0x2  ; Saida Error padrao
    ; My Var
    TAM:           equ 0xC  ; Armazenando 10

segment .bss
    BUFFER_32: resb 0x1 ; resb -> reserve a Byte, ou seja estou reservando 1Byte que são 8Bits sua pseudo-intrução é 'db'

segment .text

WRITE:
   mov EAX, SYS_WRITE_32
   mov EBX, SYS_OUT_32
   mov ECX, BUFFER_32
   mov EDX, TAM
   int SYS_CALL_32
   ret




