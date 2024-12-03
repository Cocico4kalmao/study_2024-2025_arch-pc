%include 'in_out.asm'

SECTION .data
    msg_func db "Функция: 3(𝑥 + 2)", 0xA, 0 ; Added newline
    msg_result db "Результат: ", 0
    newline db 0xA, 0 ; Newline character

SECTION .text
    GLOBAL _start

_start:
    mov eax, msg_func
    call sprintLF

    pop ecx          ; Number of arguments
    pop edx          ; Program name
    sub ecx, 1       ; Adjust for program name

    mov esi, 0       ; Initialize sum

next:
    cmp ecx, 0
    jz _end
    pop eax          ; Get next number from stack
    call atoi        ; Convert to integer

    add eax, 2       ; Add 2 FIRST (x + 2)
    mov ebx, 3       ; Multiplier
    mul ebx          ; Multiply by 3 (3 * (x + 2))
    add esi, eax      ; Add to the sum

    loop next

_end:
    mov eax, msg_result
    call sprint
    mov eax, esi
    call iprintLF
    call quit
