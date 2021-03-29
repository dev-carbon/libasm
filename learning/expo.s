%define sys_exit 60

section .text

global _start
_start:

; Starting values: calculating 2 ^ 3
    mov rbx, 2
    mov rcx, 3

; This stores the result, which starts as 1
    mov rax, 1

loop_start:

; Compare rcx to 0
    cmp rcx, 0

; Break loop once rcx reaches 0
    jle loop_stop

; Multiply rbx by rax, storing the result each time in rbx
    imul rax, rbx

; Decrement rcx
    dec rcx

; Start the loop again
    jmp loop_start

loop_stop:

; End the program
    mov rdi, rax
    mov rax, sys_exit
    syscall
