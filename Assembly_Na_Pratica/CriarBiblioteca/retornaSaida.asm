bits 64

segment .data
  LF		equ 0xA    ; Line Feed, famosa quebra de linha
  NULL		equ 0xD    ; Final da String, famoso byte nulo, informando que eu acabei aquela string
  SYS_CALL	equ 0x80   ; Executando a syscall e informando ao processador para executar este bloco de codigo
  ; EAX
  SYS_EXIT	equ 0x1    ; Syscall do Linux para o 'EXIT'
  SYS_READ	equ 0x3    ; Syscall do Linux para o 'READ'
  SYS_WRITE	equ 0x4    ; Syscall do Linux para o 'WRITE'
  ; EBX
  RET_EXIT	equ 0x0    ; Retorno 0, estou informando para a SYSCALL 'EXIT' que foi um sucesso o codigo
  STD_IN	equ 0x0    ; Entrada padrao
  STD_OUT	equ 0x1    ; Saida Padrao
  STD_ERR	equ 0x2	   ; Error Padrao
  ; MY Var
  TAM_BUFFER 	equ 0xA    ; A em hexadecimal é 10

segment .bss
  BUFFER resb 0x1 ; resb -> Reserve a Byte, ou seja estou reservando 1Byte que são 8bits, sua pseudo-intrução é 'db'

segment .text

saidaResultado:
   mov EAX, SYS_WRITE
   mov EBX, STD_OUT
   mov ECX, BUFFER
   mov EDX, TAM_BUFFER
   int SYS_CALL
   ret
