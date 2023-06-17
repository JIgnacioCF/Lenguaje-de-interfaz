section .data 
mensaje db "El resultado es: %d", 10, 0 ; cadena de texto con formato
resultado db 0 ; variable que almacenara el resultado

section .text
    global _start

_start:
; sumamos 15 y 35 y alamacenamos el resultado en la variable 'resultado'
mov eax , 15
add eax, 35
mov [resultado], eax

; llamada al sistema 'write'  para imprimir el mensaje en la terminal
mov eax, 4 ; codigo de la llamada al sistema 'write'
mov ebx, 1 ; descriptor de archivo (STDOUT)
mov ecx, mensaje ; dirección de la cadena de texto con formato
mov edx, 25 ; longitud del mensaje en bytes
int 0x80 ; interrupción para realizar la llamada al sistema

;llamada al sistema 'write' para imprimir el resultado en la terminal
mov eax, 4 ; codigo de la llamada al sistema 'write'
mov ebx, 1 ; descriptor de archivo (STDOUT)
mov ecx, resultado ; dirección de la variable que contiene el resultado
mov edx, 2 ; longitud del resultado en bytes
int 0x80 ; interrupcion para realizar la llamada al sistema

;llamada al sistema 'exit' para finalizar el programa
mov eax, 1 ; codigo de la llamada al sistema 'exit'
xor ebx, ebx ; valor de retorno del programa (0)
int 0x80 ; interrupción de la llamada al sistema.


