# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pchennia <pchennia@student.42.fi>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/08/21 16:29:14 by pchennia          #+#    #+#              #
#    Updated: 2024/08/21 20:37:37 by pchennia         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc
FLAGS = -Wall -Wextra -Werror

SRC = $(shell find . -type f ! -name "ft_lst*.c" -name "ft_*.c")

OBJ = $(SRC:.c=.o)
BSRC	= $(wildcard ft_lst*.c)
B_OBJ	= $(BSRC:.c=.o)

%.o: %.c
	@$(CC) $(FLAGS) -c $< -o $@

$(NAME): $(OBJ)
		@ar -rc $(NAME) $(OBJ)
		@echo "libft created."

all: $(NAME)

bonus: $(OBJ) $(B_OBJ)
	@ar -rc $(NAME) $(OBJ) $(B_OBJ)
clean: 
	@rm -f *.o

fclean: clean
		@rm -f $(NAME)
		@echo "libft removed."

re: fclean all

.PHONY: all bonus clean fclean re
