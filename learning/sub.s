%define sys_exit 60

section .text

global _start
_start:

; Set rbx to 5
    mov rbx, 5

; Add 3 to rbx
    add rbx, 3

; Set rax to 2
    mov rax, 2

; Subtract rax from rbx twice
    sub rbx, rax
    sub rbx, rax

; End the program, returning the value in rbx
    mov rdi, rbx
    mov rax, sys_exit
    syscall