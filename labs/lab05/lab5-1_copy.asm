section .data
    msg db 'Введите строку:', 10
    msgLen equ $ - msg

section .bss
    buf1 resb 80

section .text
    global _start

_start:
    ; Системный вызов write
    mov eax, 4          ; sys_write
    mov ebx, 1          ; стандартный вывод
    mov ecx, msg        ; адрес сообщения
    mov edx, msgLen     ; длина сообщения
    int 0x80            ; вызов ядра

    ; Системный вызов read
    mov eax, 3          ; sys_read
    mov ebx, 0          ; стандартный ввод
    mov ecx, buf1       ; адрес буфера
    mov edx, 80         ; длина ввода
    int 0x80            ; вызов ядра

    ; Системный вызов exit
    mov eax, 1          ; sys_exit
    xor ebx, ebx        ; код выхода 0
    int 0x80            ; вызов ядра
