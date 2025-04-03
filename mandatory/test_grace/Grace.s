section .data
filename db "test.txt", 0   ; Nom du fichier (terminé par NULL)
flags equ 0x42              ; O_CREAT | O_WRONLY (écriture, création si absent)
mode equ 0o644              ; Permissions (rw-r--r--)

section .text
global _start

_start:
    mov rax, 2          ; Syscall `open`
    mov rdi, filename   ; Nom du fichier
    mov rsi, flags      ; Flags (O_CREAT | O_WRONLY)
    mov rdx, mode       ; Mode (644)
    syscall

    mov rdi, rax        ; Sauvegarde du file descriptor
    mov rax, 60         ; Syscall `exit`
    xor rdi, rdi        ; Code de sortie 0
    syscall
