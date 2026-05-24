NAME		:= get_next_line.a

CFLAGS		:= -Wall -Wextra -Werror
CPPFLAGS	:= -I.
ARFLAGS		:= rcs

SRCS		:= get_next_line.c \
				get_next_line_utils.c
				
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