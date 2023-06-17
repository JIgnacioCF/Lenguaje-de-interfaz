section .data
resultado db "El resultado es: ", 10, 0
num1 db 5 
num2 db 20

section .text
    gllobal _start

_start:
; realiza la resta 
mov al, num1 ; mueve el valor de num1 a al
sub al, num2 ; resta num2 a al
; convierte el resultado a un caracter ascii
add al, 48 ; suma 48 para convertir el valor a su representación ascii
; imprime el resultado en la terminal
mov edx, 17 ; longitud de la cadena resultado
mov ecx, resultado ; dirección de la cadena resultado
mov ebx, 1;  descriptor de archivo para stdout
mov eax, 4 ; numero de sistema para la llamada write
int 0x80 ; llama al sistema

; sale del programa
mov eax, 1 ; numero de sistema para la llamada exit
xor ebx, ebx ; codigo de salida
int 0x80 ; llama al sistema
