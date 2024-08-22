# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pchennia <pchennia@student.42.fi>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/08/21 23:22:27 by pchennia          #+#    #+#              #
#    Updated: 2024/08/21 23:22:35 by pchennia         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= cub3d

SRC_DIR	 = src
SRCS		:= $(shell find $(SRC_DIR) -type f -name "*.c")
OBJS		= $(SRCS:.c=.o)

# mlx library
MLX		= ./minilibx-linux/
MINILIBX	= minilibx-linux/libmlx.a
LFLAGS	= -L $(MLX) -l mlx -lXext -lX11

FT		= ./libft/
FT_LIB	= ./libft/libft.a

CC		  = gcc
CFLAGS	  = -Wall -Wextra -I./include -I $(MLX) -I $(FT) -g

all: $(NAME)

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

$(NAME): $(FT_LIB) $(MINILIBX) $(OBJS)
	@$(CC) $(OBJS) -lm $(FT_LIB) -o $(NAME) $(LFLAGS)

$(MINILIBX):
	@make -C $(MLX)

$(FT_LIB):
	@make -C $(FT)

clean:
	@rm -rf $(OBJS)
	@make -C $(MLX) clean
	@make -C $(FT) clean

fclean: clean
	@rm -rf $(NAME)
	@make -C $(MLX) clean
	@make -C $(FT) fclean

re:
	@make fclean
	@make all
	
.PHONY: clean fclean re all