section .data
    msg1 db "Mensaje 1", 0xA, 0xD
    len1 equ $-msg1
    msg2 db "Mensaje 2", 0xA, 0xD
    len2 equ $-msg2

section .text 
    imprime: 
    mov eax, 4
    mov ebx, 1
    int 0x80
    ret

global _start
_start:

    mov ecx, msg1 
    mov edx, len1 
    call imprime 
    mov eax, 1
    mov ebx, 0
    int 0x80


    ; siempre que se termine el cuerpo de k procedimientio se debe de llamar a la funcion 
    ;ret que nos permite regredsar a la linea donde fue llamada el procedimiento y si no 
    ;se manda  allamar nos mandara error en el programa
