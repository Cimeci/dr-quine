global main
section .data
filename db "Grace_kid.s", 0
mode db "w", 0
code db "%1$c%3$s%1$c%2$c", 0
section .bss
file_ptr resq 1
section .text
extern fopen, fprintf, fclose
%macro Mopen 2
mov rdi, %1
mov rsi, %2
call fopen
test rax, rax
jz error
mov [file_ptr], rax
%endmacro
%macro Mprint 1
mov rdi, [file_ptr]
mov rsi, %1
mov rdx, 34
mov rcx, 10
call fprintf
%endmacro
%macro Mclose 0
mov rdi, [file_ptr]
call fclose
%endmacro
main:
push rbx
Mopen filename, mode
Mprint code
Mclose
xor rax, rax
syscall
jmp exit
error:
xor rax, rax
syscall
exit:
pop rbx
ret