global main
extern fopen
extern fclose
extern fprintf
;comment
%macro _open 1
mov rdi, %1
mov word [rbp - 8], 0x0077
lea rsi, [rbp - 8]
call fopen
test rax, rax
jne %%end
mov rax, 60
mov rdi, 1
syscall
%%end:
%endmacro
%macro _print 3
mov rsi, %1
mov rdx, %2
mov rcx, %3
mov r8, %1
xor rax, rax
call fprintf
%endmacro
%macro grace 0
main:
push rbp
mov rbp, rsp
sub rsp, 16
_open fp
mov qword [rbp - 16], rax
mov rdi, qword [rbp - 16]
_print code,10,34
mov rdi, qword [rbp - 16]
call fclose
add rsp, 16
pop rbp
ret
%endmacro
grace
section .data
fp db "Grace_kid.s", 0
code db "caca %d %d %s", 0