CC = gcc
CFLAGS = -Wall -Wextra -std=c11 -O2
SRC = src/main.c
BIN = bin/tasks

all: $(BIN)

$(BIN): $(SRC)
	@mkdir -p bin
	$(CC) $(CFLAGS) $(SRC) -o $(BIN)

run: all
	./$(BIN)

clean:
	rm -rf bin

.PHONY: all run clean
