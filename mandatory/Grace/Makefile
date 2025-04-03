NAME	= Grace

SRC		= Grace.s

NASM	= nasm

NASM_FLAGS = -f elf64 -g

OBJ		=  $(SRC:.s=.o)

LINK	= gcc -m64 -o

NASM	+= $(NASM_FLAGS)

all: $(NAME)

$(NAME): $(OBJ)
	@$(LINK) $(NAME) $^ -lc -no-pie

%.o: %.s
	@$(NASM) $< -o $@

clean:
	@rm -f $(OBJ)
fclean: clean
	@rm -f $(NAME)
re: fclean all

