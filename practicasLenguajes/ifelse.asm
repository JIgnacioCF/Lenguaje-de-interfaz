section .bss
    resultado resb 1

section .text
    global _start

_start:
    mov eax, 7
    mov ebx, 8
    jz funcionif
    jmp funelse
    
funcionif:
    mov ebx, 1
    jmp salir

funelse:
    mov ebx, 0

salir:
    add ebx, 48
    mov [resultado], ebx

    mov eax, 4
    mov ebx, 1
    mov ecx, resultado
    mov edx, 1
    int 0x80

    mov eax, 1
    mov ebx, 0
    int 0x80


