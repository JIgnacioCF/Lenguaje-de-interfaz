section .data
    Msg1 db "Introduce un numero", 10
    Msg1Len equ $-Msg1
    Msg2 db "El numero que ingresaste es: "
    Msg2Len equ $-Msg2
    Msg3 db 10

    Numero db "     "

section .bss

section .text

global _start

_start:

    mov eax,4
    mov ebx,1
    mov ecx,Msg1
    mov edx,Msg1Len
    int 0x80

    mov eax,3
    mov ebx,1
    mov ecx,Numero
    mov edx,2
    int 0x80

    mov eax,4
    mov ebx,1
    mov ecx,Msg2
    mov edx,Msg2Len
    int 0x80

    mov eax,4
    mov ebx,1
    mov ecx,Numero
    mov edx,2
    int 0x80

    mov eax,4
    mov ebx,1
    mov ecx,Msg3
    mov edx,1
    int 0x80

    mov eax,1
    mov ebx,0
    int 0x80
    ; mensaje linea 29 eera para especificar 
    ;el largo del mensaje y sirve mucho para no tener problemas con la extension del arreglo
    ;sirve para automatizar esa parte
    ; el 10 sirve para salto de linea
    ;linea 24 se guarda lo que el usuario registra.
    ;eax4 y eb1 sirven para imprimir
    ;mov eax3 para recibir datos de la terminal p0ara guardarlki en la variable numero
    ; donde solo se guardan nuimeros de 2 caracteres
    ;despues se imprime el mensahe 2
    ; hace lo mismo qye ek mensaje 1
    ; si le p9onemos un 3 puede recibir numeros de 0 a 999
    ;mensaje 3 es un salto de linea y ahi se termina el programa
    
