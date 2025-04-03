extern printf
global main
%macro grace
fill
%endmacro
%macro fill_args 3
mov rdx, %1
mov rcx, %2
mov r8, %3
%endmacro
%macro open
fopen
%endmacro
grace
section .data
kid: "Grace_kid.s"