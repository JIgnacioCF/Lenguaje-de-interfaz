section .data
    prompt_celsius db "Ingrese la temperatura en Celsius: ", 0
    prompt_metros db "Ingrese la longitud en metros: ", 0
    prompt_kilogramos db "Ingrese la masa en kilogramos: ", 0
    result_temp db "La temperatura en Fahrenheit es: ", 0
    result_length db "La longitud en pies es: ", 0
    result_mass db "La masa en libras es: ", 0

section .bss
    input_buffer resb 16

section .text
    global _start

_start:
    ; Pedir temperatura en Celsius
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt_celsius
    mov edx, 30
    int 0x80

    ; Leer temperatura en Celsius
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 16
    int 0x80

    ; Convertir temperatura de Celsius a Fahrenheit
    mov eax, input_buffer
    sub al, '0' ; Convertir ASCII a número
    movsx eax, al ; Extender a 32 bits
    mov edx, 0
    imul eax, 9 ; Multiplicar por 9
    idiv dword 5 ; Dividir por 5
    add eax, 32 ; Sumar 32 para convertir a Fahrenheit

    ; Mostrar resultado de temperatura en Fahrenheit
    mov ebx, eax
    mov eax, 4
    mov ecx, result_temp
    mov edx, 30
    int 0x80

    ; Pedir longitud en metros
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt_metros
    mov edx, 28
    int 0x80

    ; Leer longitud en metros
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 16
    int 0x80

    ; Convertir longitud de metros a pies
    mov eax, input_buffer
    sub al, '0' ; Convertir ASCII a número
    movsx eax, al ; Extender a 32 bits
    mov edx, 0
    imul eax, 3281 ; Multiplicar por 3281 para convertir a pies (1 metro = 3.281 pies)

    ; Mostrar resultado de longitud en pies
    mov ebx, eax
    mov eax, 4
    mov ecx, result_length
    mov edx, 28
    int 0x80

    ; Pedir masa en kilogramos
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt_kilogramos
    mov edx, 31
    int 0x80

    ; Leer masa en kilogramos
    mov eax, 3
    mov ebx, 0
    mov ecx, input_buffer
    mov edx, 16
    int 0x80

    ; Convertir masa de kilogramos a libras
    mov eax, input_buffer
    sub al, '0' ; Convertir ASCII a número
    movsx eax, al ; Extender a 32 bits
    mov edx, 0
    imul eax, 2205 ; Multiplicar por 2205 para convertir a libras (1 kilogramo = 2.205 libras)

    ; Mostrar resultado de masa en libras
    mov ebx, eax
    mov eax, 4
    mov ecx, result_mass
    mov edx, 31
    int 0x80

exit:
    ; Salir del programa
    mov eax, 1
    xor ebx, ebx
    int 0x80

