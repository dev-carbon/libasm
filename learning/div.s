%define sys_exit 60

section .text

global _start
_start:

; Set rax to 100 (this is the dividend)
    mov rax, 100

; Clear rdx so it doesn't interfere
    mov rdx, 0

; Set divisor to 13
    mov rbx, 3

; Perform the division
    idiv rbx

; End the program, returning the division result in rax
    mov rdi, rax
    mov rax, sys_exit
    syscall