section .text
global ft_write
extern __errno_location

ft_write:
        mov rax , 1     				; write system app number on linux
        syscall       					; app system
        cmp rax , 0   					; error check
        jl  error      					; if rax (which corresponds to the return of the syscall) negative = error
        ret

error:
    	neg rax                         ; errno codes are positive
		mov r10, rax					; store value rax in r10
		push r10						; store value in stack
        call    __errno_location        ; call the function __errno_location which returns the address or put the error
		pop r10
		mov [rax], r10 					; here rax contains the address of errno so by doing this we put rdi in errno
		mov rax, -1
		ret