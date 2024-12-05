%include 'in_out.asm'
SECTION .data
msg_func db "Функция: 3(x + 2)", 0xA, 0
msg_result db "Результат: ", 0
SECTION .text
GLOBAL _start
calculate_function:
add eax, 2
mov ebx, 3
mul ebx
ret
_start:
mov eax, msg_func
call sprintLF
pop ecx
pop edx
mov esi, 0
next:
cmp ecx, 1
jle _end
pop eax
call atoi
call calculate_function
add esi, eax
dec ecx
jmp next
_end:
mov eax, msg_result
call sprint
mov eax, esi
call iprintLF
call quit


