%macro impresion 2
mov eax, 4
mov ebx, 1
mov ecx, %1
mov edx, %2
int 0x80
%endmacro

section .bss
    aux resb 1

section .data
    msg db "@", 10, 13
    len equ $-msg

section .text
    global _start

_start:
    mov ecx, 5

for:
    mov [aux], ecx
    impresion msg, len
    mov ecx, [aux] 
loop for

mov eax, 1
mov ebx, 0
int 0x80