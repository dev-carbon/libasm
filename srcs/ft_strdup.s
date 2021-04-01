%include "libasm.s"

section .text

global ft_strdup

extern ft_strlen
extern malloc

; char *ft_strdup(char *s);
ft_strdup:
	push rdi

	call ft_strlen
	inc rax			; len + 1

	call malloc
	cmp rax, 0
	je error

error:
	ret

