section .data
    msg1 db " * ", 0xA, 0xD
    len1 equ $-msg1

section .text

imprime:
mov eax, 4
mov ebx, 1
int 0x80
ret

global _start
_start:

mov ecx, 10
mov eax, 0
