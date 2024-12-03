%include 'in_out.asm'
section .data
msg1 db 'Введите x: ', 0
msg2 db 'Введите a: ', 0
msg3 db 'Результат: ', 0
errMsg db 'Ошибка ввода', 0
section .bss
x resd 1
a resd 1
section .text
global _start
_start:
mov eax, msg1
call sprint
mov ecx, x
mov edx, 4
call sread
mov eax, x
call atoi
mov [x], eax
mov eax, msg2
call sprint

mov ecx, a
mov edx, 4
call sread
mov eax, a
call atoi
mov [a], eax
mov eax, [x]
mov ebx, [a]
cmp eax, ebx
je equal
add eax, ebx
jmp print_result
equal:
mov eax, 6
mul ebx
print_result:
push eax
mov eax, msg3
call sprint
pop eax
call iprintLF
call quit
