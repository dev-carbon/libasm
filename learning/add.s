%define sys_exit 60

section .text

global _start
_start:

; Set rbx to 2
    mov rbx, 2

; Add 3 to rbx
    add rbx, 3

; Set rax to 4
    mov rax, 4

; Add rax to rbx
    add rbx, rax

; End the program, returning the value in rbx
    mov rdi, rbx
    mov rax, sys_exit
    syscall