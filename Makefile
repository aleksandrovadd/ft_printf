# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: daleksan <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/04/10 19:40:36 by daleksan          #+#    #+#              #
#    Updated: 2017/10/29 14:48:16 by daleksan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = @gcc

NAME = libftprintf.a

LIBFT = ../libft.a

SRC = src/type_def.c src/spec_init.c\
		src/parse_specif.c src/length.c src/ft_pchar.c src/for_x.c\
		src/for_u.c src/for_o.c src/for_d.c src/for_c.c\
		src/for_p.c src/for_s.c src/ft_printf.c src/libft.c\
		src/ft_lib.c src/parse_specif_2.c src/ft_itoa.c

CFLAGS = -Wall -Wextra -Werror
OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@make -C libft/
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo "\033[32;1m<<lib ft_printf done>>\033[0m"

clean:
	@rm -f $(OBJ)
	@make -C libft clean 
	@echo "\033[1;36m<<objects deleted>>\033[0m"
	
fclean: clean
	@rm -rf $(NAME)
	@make -C libft fclean
	@echo "\033[1;31m<<lib ft_printf deleted>>\033[0m"

re: fclean all
