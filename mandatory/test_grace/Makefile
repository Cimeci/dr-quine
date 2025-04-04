NAME = Grace
SRC = Grace.s
OBJ = Grace.o
OUT = Grace_kid.s

NASM = nasm
NASMFLAGS = -f elf64

CC = gcc
CFLAGS = -no-pie -nostartfiles -lc

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(NAME)

$(OBJ): $(SRC)
	$(NASM) $(NASMFLAGS) $(SRC) -o $(OBJ)

run: $(NAME)
	./$(NAME)
	cat $(OUT)

clean:
	rm -f $(OBJ) $(OUT)

fclean: clean
	rm -rf $(NAME)
	rm -rf Grace_kid.s

re: fclean all