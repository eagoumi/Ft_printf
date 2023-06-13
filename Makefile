NAME=libftprintf.a
CC=cc -Wall -Wextra -Werror
INCLUDE=./ft_printf.h
PATH_SRC=./
PATH_OBJ=./File_Object_Printf/

# fonctions supplementaires de ft_printf

FILES_SRC=	ft_printf_char.c \
			ft_printf_nbr_u.c \
			ft_printf_nbr.c \
			ft_printf_str.c \
			ft_printfhexlow.c \
			ft_printfhexupp.c \
			ft_printf.c 

OBJ=$(addprefix $(PATH_OBJ), $(FILES_SRC:.c=.o))

DEF 	= 	\x1B[1;0m
RED 	= 	\x1B[1;31m
PURPLE 	=	\x1B[1;34m
BLUE 	= 	\x1B[1;96m
GREEN 	= 	\x1B[1;32m
SILVER 	= 	\x1B[1;90m
YELLOW 	= 	\x1B[1;33m
WHITE	= 	\x1b[37m

all: $(NAME)

$(NAME):$(OBJ) $(INCLUDE)
	@ar -rcs $(NAME) $(OBJ)
	@printf "\n\t\t\t\t\t\t      $(RED)$(NAME) $(GREEN) 𝘾 𝙍 𝙀 𝘼 𝙏 𝙀 𝘿  ✅ \n"

	@printf "$(GREEN)\t ─────────────────$(RED)────────────────$(GREEN)────────────────$(RED)────────────────$(GREEN)────────────────$(RED)────────────────────────$(GREEN)───────────\n"
	@printf "$(GREEN)\t ─██████████████──$(RED)██████████████──$(GREEN)██████████████──$(RED)██████████████──$(GREEN)██████──██████──$(RED)██████──────────██████──$(GREEN)██████████─\n"
	@printf "$(GREEN)\t ─██░░░░░░░░░░██──$(RED)██░░░░░░░░░░██──$(GREEN)██░░░░░░░░░░██──$(RED)██░░░░░░░░░░██──$(GREEN)██░░██──██░░██──$(RED)██░░██████████████░░██──$(GREEN)██░░░░░░██─\n"
	@printf "$(GREEN)\t ─██░░██████████──$(RED)██░░██████░░██──$(GREEN)██░░██████████──$(RED)██░░██████░░██──$(GREEN)██░░██──██░░██──$(RED)██░░░░░░░░░░░░░░░░░░██──$(GREEN)████░░████─\n"
	@printf "$(GREEN)\t ─██░░██──────────$(RED)██░░██──██░░██──$(GREEN)██░░██──────────$(RED)██░░██──██░░██──$(GREEN)██░░██──██░░██──$(RED)██░░██████░░██████░░██──$(GREEN)──██░░██───\n"
	@printf "$(GREEN)\t ─██░░██████████──$(RED)██░░██████░░██──$(GREEN)██░░██──────────$(RED)██░░██──██░░██──$(GREEN)██░░██──██░░██──$(RED)██░░██──██░░██──██░░██──$(GREEN)──██░░██───\n"
	@printf "$(GREEN)\t ─██░░░░░░░░░░██──$(RED)██░░░░░░░░░░██──$(GREEN)██░░██──██████──$(RED)██░░██──██░░██──$(GREEN)██░░██──██░░██──$(RED)██░░██──██░░██──██░░██──$(GREEN)──██░░██───\n"
	@printf "$(GREEN)\t ─██░░██████████──$(RED)██░░██████░░██──$(GREEN)██░░██──██░░██──$(RED)██░░██──██░░██──$(GREEN)██░░██──██░░██──$(RED)██░░██──██████──██░░██──$(GREEN)──██░░██───\n"
	@printf "$(GREEN)\t ─██░░██──────────$(RED)██░░██──██░░██──$(GREEN)██░░██──██░░██──$(RED)██░░██──██░░██──$(GREEN)██░░██──██░░██──$(RED)██░░██──────────██░░██──$(GREEN)──██░░██───\n"
	@printf "$(GREEN)\t ─██░░██████████──$(RED)██░░██──██░░██──$(GREEN)██░░██████░░██──$(RED)██░░██████░░██──$(GREEN)██░░██████░░██──$(RED)██░░██──────────██░░██──$(GREEN)████░░████─\n"
	@printf "$(GREEN)\t ─██░░░░░░░░░░██──$(RED)██░░██──██░░██──$(GREEN)██░░░░░░░░░░██──$(RED)██░░░░░░░░░░██──$(GREEN)██░░░░░░░░░░██──$(RED)██░░██──────────██░░██──$(GREEN)██░░░░░░██─\n"
	@printf "$(GREEN)\t ─██████████████──$(RED)██████──██████──$(GREEN)██████████████──$(RED)██████████████──$(GREEN)██████████████──$(RED)██████──────────██████──$(GREEN)██████████─\n"
	@printf "$(GREEN)\t ─────────────────$(RED)────────────────$(GREEN)────────────────$(RED)────────────────$(GREEN)────────────────$(RED)────────────────────────$(GREEN)───────────\n\n\n\n"

$(PATH_OBJ)%.o:./%.c
	@mkdir -p $(PATH_OBJ)
	@$(CC) -c $< -o $@
	@printf "\t\t$(SILVER)[$(PURPLE)Object file of $(WHITE)$< $(BLUE)  ======>  $(WHITE)$(PATH_OBJ)$(notdir $@)   $(RED)>>>> $(GREEN)🅳 🅾 🅽 🅴 $(RED) <<<<$(SILVER)] $(GREEN)         🅲  🆁  🅴  🅰  🆃  🅴  🅳\n\n" 

clean:
	@printf "$(RED)\t ─────────────────$(GREEN)────────────────$(RED)────────────────$(GREEN)────────────────$(RED)────────────────$(GREEN)────────────────────────$(RED)───────────\n"
	@printf "$(RED)\t ─██████████████──$(GREEN)██████████████──$(RED)██████████████──$(GREEN)██████████████──$(RED)██████──██████──$(GREEN)██████──────────██████──$(RED)██████████─\n"
	@printf "$(RED)\t ─██░░░░░░░░░░██──$(GREEN)██░░░░░░░░░░██──$(RED)██░░░░░░░░░░██──$(GREEN)██░░░░░░░░░░██──$(RED)██░░██──██░░██──$(GREEN)██░░██████████████░░██──$(RED)██░░░░░░██─\n"
	@printf "$(RED)\t ─██░░██████████──$(GREEN)██░░██████░░██──$(RED)██░░██████████──$(GREEN)██░░██████░░██──$(RED)██░░██──██░░██──$(GREEN)██░░░░░░░░░░░░░░░░░░██──$(RED)████░░████─\n"
	@printf "$(RED)\t ─██░░██──────────$(GREEN)██░░██──██░░██──$(RED)██░░██──────────$(GREEN)██░░██──██░░██──$(RED)██░░██──██░░██──$(GREEN)██░░██████░░██████░░██──$(RED)──██░░██───\n"
	@printf "$(RED)\t ─██░░██████████──$(GREEN)██░░██████░░██──$(RED)██░░██──────────$(GREEN)██░░██──██░░██──$(RED)██░░██──██░░██──$(GREEN)██░░██──██░░██──██░░██──$(RED)──██░░██───\n"
	@printf "$(RED)\t ─██░░░░░░░░░░██──$(GREEN)██░░░░░░░░░░██──$(RED)██░░██──██████──$(GREEN)██░░██──██░░██──$(RED)██░░██──██░░██──$(GREEN)██░░██──██░░██──██░░██──$(RED)──██░░██───\n"
	@printf "$(RED)\t ─██░░██████████──$(GREEN)██░░██████░░██──$(RED)██░░██──██░░██──$(GREEN)██░░██──██░░██──$(RED)██░░██──██░░██──$(GREEN)██░░██──██████──██░░██──$(RED)──██░░██───\n"
	@printf "$(RED)\t ─██░░██──────────$(GREEN)██░░██──██░░██──$(RED)██░░██──██░░██──$(GREEN)██░░██──██░░██──$(RED)██░░██──██░░██──$(GREEN)██░░██──────────██░░██──$(RED)──██░░██───\n"
	@printf "$(RED)\t ─██░░██████████──$(GREEN)██░░██──██░░██──$(RED)██░░██████░░██──$(GREEN)██░░██████░░██──$(RED)██░░██████░░██──$(GREEN)██░░██──────────██░░██──$(RED)████░░████─\n"
	@printf "$(RED)\t ─██░░░░░░░░░░██──$(GREEN)██░░██──██░░██──$(RED)██░░░░░░░░░░██──$(GREEN)██░░░░░░░░░░██──$(RED)██░░░░░░░░░░██──$(GREEN)██░░██──────────██░░██──$(RED)██░░░░░░██─\n"
	@printf "$(RED)\t ─██████████████──$(GREEN)██████──██████──$(RED)██████████████──$(GREEN)██████████████──$(RED)██████████████──$(GREEN)██████──────────██████──$(RED)██████████─\n"
	@printf "$(RED)\t ─────────────────$(GREEN)────────────────$(RED)────────────────$(GREEN)────────────────$(RED)────────────────$(GREEN)────────────────────────$(RED)───────────\n\n\n\n"

	@rm -rf $(PATH_OBJ)
	@printf "\n\t$(BLUE)|🤧 - 🤧 - 🤧 - 🤧 - 🤧 - 🤧|\t$(RED)𝘾 𝙇 𝙀 𝘼 𝙉 𝙄 𝙉 𝙂   𝘼 𝙍 𝙀   𝘾 𝙊 𝙈 𝙋 𝙇 𝙀 𝙏 𝙀 𝘿\t$(YELLOW)|✅ - ✅ - ✅ - ✅ - ✅ - ✅|\n\n"

fclean: clean
	@rm -f $(NAME)
	@printf "\n\t$(YELLOW)|🚮 - 🚮 - 🚮 - 🚮 - 🚮 - 🚮|\t$(RED)𝙁 𝙊 𝙍 𝘾 𝙀   𝘾 𝙇 𝙀 𝘼 𝙉 𝙄 𝙉 𝙂   𝘼 𝙍 𝙀   𝘾 𝙊 𝙈 𝙋 𝙇 𝙀 𝙏 𝙀 𝘿    $(BLUE)|✅ - ✅ - ✅ - ✅ - ✅ - ✅|\n\n"; \


re: fclean all
	@printf "\n\t\t\t$(YELLOW)               ==$(GREEN)---------------------------------------------------$(YELLOW)== $(BLUE)\n"
	@printf "\t\t\t$(YELLOW)               ||$(GREEN)---------------------------------------------------$(YELLOW)||\n"
	@printf "\t\t\t$(YELLOW)               ||$(GREEN) 𝙍 𝙀 - 𝙈 𝘼 𝙆 𝙄 𝙉 𝙂   𝘼 𝙍 𝙀   𝘾 𝙊 𝙈 𝙋 𝙇 𝙀 𝙏 𝙀 𝘿   ✅$(YELLOW)||\n"
	@printf "\t\t\t$(YELLOW)               ||$(GREEN) 𝙍 𝙀 - 𝙈 𝘼 𝙆 𝙄 𝙉 𝙂   𝘼 𝙍 𝙀   𝘾 𝙊 𝙈 𝙋 𝙇 𝙀 𝙏 𝙀 𝘿   ✅$(YELLOW)||\n"
	@printf "\t\t\t$(YELLOW)               ||$(GREEN) 𝙍 𝙀 - 𝙈 𝘼 𝙆 𝙄 𝙉 𝙂   𝘼 𝙍 𝙀   𝘾 𝙊 𝙈 𝙋 𝙇 𝙀 𝙏 𝙀 𝘿   ✅$(YELLOW)||"
	@printf "\n\t\t\t$(YELLOW)               ||$(GREEN)---------------------------------------------------$(YELLOW)||\n"
	@printf "\t\t\t$(YELLOW)               ==$(GREEN)---------------------------------------------------$(YELLOW)== $(BLUE)\n\n\n\n"


.PHONY: all clean fclean re
