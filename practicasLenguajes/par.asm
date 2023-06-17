section .data
    msg1 db "Es par", 10, 13
    lonmsg1 equ $-msg1
    msg2 db "Es impar", 10, 13
    lonmsg2 equ $-msg2

section .text
    global _start

_start:
    mov al, 5
    mov bl, 1

    and al, bl

    jz par

    mov eax, 4
    mov ebx, 1
    mov ecx, msg2
    mov edx, lonmsg2
    int 0x80
    jmp salir

        par: 
        mov eax, 4
        mov ebx, 1
        mov ecx, msg1
        mov edx, lonmsg1
        int 0x80

        salir:
        mov eax, 1
        mov ebx, 0
        int 0x80
