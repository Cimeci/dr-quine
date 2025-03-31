extern printf
global main
section .text
collen:
    mov rdi, code
    mov rsi, 10
    mov rdx, 9
    mov rcx, 34
    mov r8, code
    push rbp
    call printf
    pop rbp
    mov rax, 60
	ret
main:
    push rbp
    call collen
    pop rbp
section .data
code: db "extern printf%1$cglobal main%1$csection .text%1$cmain:%1$c%2$cmov rdi, code%1$c%2$cmov rsi, 10%1$c%2$cmov rdx, 9%1$c%2$cmov rcx, 34%1$c%2$cmov r8, code%1$c%2$cpush rbp%1$c%2$ccall printf%1$c%2$cpop rbp%1$c%2$cmov rax, 60%1$c%2$cret%1$csection .data%1$ccode: db %3$c%4$s%3$c, 0", 0  