section .bss
    resultado resb 1

section .text
    global _start

_start:
    mov ecx, 3
    mov eax, 0

for:
    add eax, ecx
    loop for

    add eax, 48
    mov [resultado], eax

    mov eax, 4
    mov ebx, 1
    mov ecx, resultado
    mov edx, 1
    int 0x80
    
    mov  eax, 1
    mov ebx, 0
    int 0x80


; urtiloiza el registro ecx en 1 cada que se ejcuta la funcio
; loop y compara cuando el registro ecx llega a cero se birnca la siguiebte funcion
