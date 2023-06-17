section .data
    msg1 db "Etiqueta 1", 10, 13
    lonmsg1 equ $-msg1 ;se utiliza por es nativo en ensamblador, determina donde se encuentra dentro del arreglo
    msg2 db "Etiqueta 2", 10, 13
    lonmsg2 equ $-msg2
section .bss

section .text

    global _start

_start:

jmp etiqueta2

 etiqueta1:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg1
    mov edx, lonmsg1
    int 0x80

    etiqueta2:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg2
    mov edx, lonmsg2
    int 0x80



mov eax, 1
mov ebx, 0
int 0x80