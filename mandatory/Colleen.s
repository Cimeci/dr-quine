extern printf
global main
section .text
main:
    push rbp
    mov rbp, rsp
    mov rdi, code
    mov rsi, 10
    mov rdx, 34
    mov rcx, code
    xor eax, eax
    call printf
    mov rsp, rbp
    pop rbp
    mov rax, 60
    xor rdi, rdi
	syscall
section .data
code: db "", 0