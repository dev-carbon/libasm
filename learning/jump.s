%define sys_write 1
%define stdout 1

%define sys_exit 60

%define newline 10

section .data

    output: db "Greetings!", newline
    output_len: equ $-output

section .text

global _start
_start:

; The number of times to print the text out
    mov rbx, 2

loop_start:
; Check if the loop should end first
	cmp rbx, 0
	jle loop_stop

; Print the text to the console
    mov rax, sys_write
    mov rdi, stdout
    mov rsi, output
    mov rdx, output_len
    syscall

; Decrement the loop counter
    dec rbx

; Continue the loop while rbx > 0
    cmp rbx, 0
    jg loop_start

loop_stop:

; Exit the program
    mov rax, sys_exit
    mov rdi, 0
    syscall