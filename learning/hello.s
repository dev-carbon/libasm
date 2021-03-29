; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    exit.s                                             :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: humanfou <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/03/29 13:34:57 by humanfou          #+#    #+#              ;
;    Updated: 2021/03/29 13:35:00 by humanfou         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define sys_write 1
%define stdout 1

%define sys_exit 60
%define success 0

%define nl 10

section .data
    message db "Hello, world!", 10
    len equ $-message

section .text

global _start
_start:
    mov rax, sys_write
    mov rdi, stdout
    mov rsi, message
    mov rdx, len 
    syscall

	mov rax, 60
	mov rdi, 0
	syscall
