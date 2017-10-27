# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: daleksan <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/04/10 19:40:36 by daleksan          #+#    #+#              #
#    Updated: 2017/04/10 19:41:43 by daleksan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = @gcc

NAME = libftprintf.a

SRC = src/type_def.c src/spec_init.c\
		src/parse_specif.c src/length.c src/ft_pchar.c src/for_x.c\
		src/for_u.c src/for_o.c src/for_d.c src/for_c.c\
		src/for_p.c src/for_s.c src/ft_printf.c src/libft.c\
		src/ft_lib.c src/parse_specif_2.c

CFLAGS = -Wall -Wextra -Werror
OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo "\033[32;1m<<lib done>>\033[0m"
clean:
	@rm -f $(OBJ)
	@echo "\033[32;1m<<delete objects>>\033[0m"
	
fclean: clean
	@rm -rf $(NAME)
	@echo "\033[32;1m<<delete lib>>\033[0m"

re: fclean all
	@echo "\033[32;1m<<re succes>>\033[0m"