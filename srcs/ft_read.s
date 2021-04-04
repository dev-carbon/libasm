%include "libasm.s"

section .text

global ft_read
extern __errno_location

; ssize_t ft_read(int fd, void *buf, size_t count);
ft_read:
	mov rax, sys_read
	syscall
	
	cmp rax, 0
	jl .error
	ret

.error:
	neg rax
	mov r8, rax
	push r8
	call __errno_location
	pop r8
	mov [rax], r8
	mov rax, -1
	ret