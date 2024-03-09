NAME = libasm.a
EXNAME = libasm
CC = clang
AS = nams
ASFLAGS = 
CFLAGS = -Werror -Wextra -Wall
SRCS = srcs/ft_strlen.s 
OBJS = $(patsubst %.s, %.o,$(SRCS))

.s.o: $(SRCS)
	$(AS) $(ASFLAGS) -c $^ -o $@

all: $(NAME)

$(NAME): $(OBJS)
	$(AS) $(ASFLAGS) -o $(NAME) $(OBJS)

run: all
	$(CC) $(CFLAGS) main.c -L. -lasm -o $(EXNAME)
	./$(EXNAME)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf *.dSYM
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
