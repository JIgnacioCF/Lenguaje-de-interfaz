%macro imprime 2
mov eax, 4
mov ebx, 1
mov ecx, %1  
mov edx,  %2
int 0x80
%endmacro

section .data
    msg1 db "Mensaje 1", 10, 13 
    len1 equ $-msg1
    msg2 db "Mensaje 2", 10, 13 
    len2 equ $-msg2

section .text
    global _start

_start:
imprime msg1, len1

    mov eax, 1
    mov ebx, 0
    int 0x80


         
     ; en esta ocasion la macro nos sirve para no estar repitiendo la misma estructura de 
     ;imprimir lo que esta en nuestra variables, de esta manera solo se manda llamar a la 
     ;etiqueta de nuestra macro junto con  los dos parametros que necesitemos y este imprimira 
     ;en pantalla
     ;la macro siempre se carga guera de las secciones, es por ello recomendable codificarlo 
     ;fuera de la estructura de nuestro programa 