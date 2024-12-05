%include 'in_out.asm'

SECTION .data
msg: DB 'Введите x: ',0
result: DB 'f(g(x))=',0
SECTION .bss
x: RESB 80
res: RESB 80
SECTION .text
GLOBAL _start
_start:
;------------------------------------------
; Основная программа
;------------------------------------------
mov eax, msg
call sprint
mov ecx, x
mov edx, 80
call sread
mov eax,x
call atoi
call _calcul ; Вызов подпрограммы _calcul
mov eax,result
call sprint
mov eax,[res]
call iprintLF
call quit

;------------------------------------------
; Подпрограмма вычисления
; выражения "f(g(x))"
_calcul:
    ; Call the sub-calculation subroutine
    call _subcalcul
    ; f(x) = 2x + 7
    mov ebx, 2
    mul ebx
    add eax, 7
    mov [res], eax
    ret

;------------------------------------------
; Подпрограмма вычисления g(x) = 3x - 1
_subcalcul:
    ; g(x) = 3x - 1
    mov ebx, 3
    mul ebx
    sub eax, 1
    ret
