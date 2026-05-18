NAME		:= get_next_line.a

CFLAGS		:= -Wall -Wextra -Werror
CPPFLAGS	:= -I.
ARFLAGS		:= rcs

SRCS		:= print_str.c \
				print_ptr.c \
				print_uint.c \
				print_nbr.c \
				print_hex.c \
				print_char.c \
				putchar_byte.c \
				ft_printf.c \
				print_live.c \
				main.c

OUTDIR		:= .out
OBJS		:= $(addprefix $(OUTDIR)/, $(SRCS:.c=.o))
AR			:= ar

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(ARFLAGS) $@ $^

$(OUTDIR)/%.o: %.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) $(CPPFLAGS) -c $< -o $@

clean:
	$(RM) -r $(OUTDIR)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re