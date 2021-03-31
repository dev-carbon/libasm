# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: humanfou <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/29 10:42:37 by humanfou          #+#    #+#              #
#    Updated: 2021/03/31 01:05:12 by humanfou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

LIB = ar rcs

CC = clang

CCFLAGS = -Wall -Wextra -Werror -fomit-frame-pointer

SANITIZE = -g3 -fomit-frame-pointer

ASM = nasm

ifeq ($(shell uname),Linux)
	ASMFLAGS = -f elf64
else
	ASMFLAGS = -f macho64
endif

ASM_SRCS = $(wildcard srcs/*.s) \

ASM_OBJS = $(ASM_SRCS:%.s=%.o)

all: $(NAME)

$(NAME): $(ASM_OBJS)
	$(LIB) $(NAME) $(ASM_OBJS)

test: all
	$(CC) main.c $(NAME)

%.o: %.s
	$(ASM) $(ASMFLAGS) -o $@ $<

clean:
	@rm -rf $(ASM_OBJS)

fclean: clean
	@rm -rf $(NAME)

re: fclean all

.PHONY: all bonus test clean fclean re