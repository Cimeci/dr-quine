NAME    = Grace
SRC     = Grace.s
OBJ     = $(SRC:.s=.o)

NASM    = nasm
NASM_FLAGS = -f elf64 -g

LINK    = gcc -m64 -o
LDFLAGS = -nostartfiles -Wl,-e,_start -no-pie

all: $(NAME)

$(NAME): $(OBJ)
	@$(LINK) $(NAME) $^ $(LDFLAGS)

%.o: %.s
	@$(NASM) $(NASM_FLAGS) $< -o $@

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all