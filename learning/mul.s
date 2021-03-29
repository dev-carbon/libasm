%define sys_exit 60

section .text

global _start
_start:
	;	Set rbx to 3
	mov rbx, 3

	;	Multilply rbx by itself
	imul rbx, rbx

	;	Double the value in rbx
	imul rbx, 2
	
	;	End the program retuning value in rbx
	mov rdi, rbx
	mov rax, sys_exit
	syscall 
