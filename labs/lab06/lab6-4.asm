%include 'in_out.asm'
SECTION .data
msg: DB 'Введите значение переменной х: ',0
rem: DB 'Результат: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, msg
call sprint
mov ecx, x
mov edx, 80
call sread
mov eax, x
call atoi
sub eax, 1
push eax
mul eax
mov ebx, 5
mul ebx
mov eax, rem
call sprint
mov eax, [esp]
call iprintLF
call quit