;outside
extern printf
global main
colleen:
mov rdi,code
mov rsi,10
mov rdx,34
mov rcx,code
call printf
ret
main:
;inside
call colleen
xor rax,rax
ret
section .data
code:db";outside%1$cextern printf%1$cglobal main%1$ccolleen:%1$cmov rdi,code%1$cmov rsi,10%1$cmov rdx,34%1$cmov rcx,code%1$ccall printf%1$cret%1$cmain:%1$c;inside%1$ccall colleen%1$cxor rax,rax%1$cret%1$csection .data%1$ccode:db%2$c%3$s%2$c"