NAME = endgame

HDRS = inc/*.h 

SRCS = src/*.c

CFLAG = -std=c11 -Wall -Wextra -Wpedantic -Werror -lncurses -lsqlite3

all: install clean
install: 
	@cp $(SRCS) .
	@cp $(HDRS) .
	@clang $(CFLAG) *.c -o $(NAME)
uninstall: clean
	@rm -rf $(NAME)
clean:
	@rm -rf *.h
	@rm -rf *.c

reinstall: uninstall all
