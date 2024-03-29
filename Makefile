# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tcoetzee <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/01 09:50:24 by tcoetzee          #+#    #+#              #
#    Updated: 2019/07/01 09:50:44 by tcoetzee         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
FLAGS = -Wall -Wextra -Werror
SRC = $(wildcard [ft_-ex_]*.c)
OBJ = $(SRC:%.c=%.o)

all: $(NAME)

$(NAME): $(OBJ)
	@echo "Creating Library with indices..."
	@ar rcs $(NAME) $(OBJ)
	@echo "Done."

$(OBJ): $(SRC)
	@echo "Compiling Files..."
	@gcc $(FLAGS) -c $(SRC)
	@echo "Done."

clean:
	@rm -f $(OBJ)
	@echo "Cleaning output files..."

norme: clean
	@norminette $(SRC) $(Name)
	@echo "Checking Normes..."

fclean: clean
	@rm -f $(NAME)
	@echo "Removing Library..."

re: fclean all




