# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anremiki <anremiki@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/17 03:23:44 by anremiki          #+#    #+#              #
#    Updated: 2021/10/17 05:00:16 by anremiki         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		= ./srcs/ft_printf.c ./srcs/ft_putchar.c ./srcs/ft_putnbr.c \
			  ./srcs/ft_putstr.c ./srcs/ft_putunbr.c ./srcs/ft_putx.c \
			  ./srcs/ft_putp.c

INCLUDES	= ./includes/

OBJS		= $(SRCS:.c=.o)

CC			= gcc

RM			= rm -f

CFLAGS		= -Wall -Wextra -Werror -I $(INCLUDES)

NAME		= libftprintf.a

all:		$(NAME)

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)

clean:
			$(RM) $(OBJS)

flcean:		clean
			$(RM) $(NAME)

re:			fclean $(NAME)

.PHONY:		all clean fclean re
