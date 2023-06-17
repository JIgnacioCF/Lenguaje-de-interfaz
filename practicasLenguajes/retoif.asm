section .bss
    resultado resb 1

section .text
    global _start:

_start:
    mov al, 5
    mov bl, 1

    jz par
    jmp impar



par: 


impar:
 
