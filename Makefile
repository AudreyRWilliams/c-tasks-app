# Choose the compiler (gcc or clang)
CC = gcc

# Compiler flags: options you pass to gcc
# -Wall   = enable all common warnings
# -Wextra = enable extra, more strict warnings
# -std=c11 = enforce C11 language standard
# -O2    = optimize code for speed
CFLAGS = -Wall -Wextra -std=c11 -O2

# SRC = the source file(s) in your project.
# Right now you only have one file: src/main.c.
# If you added more files, e.g. src/util.c, you’d add them here.
SRC = src/main.c

# BIN = the compiled program (executable).
# It will be built inside the bin/ folder with the name tasks.
BIN = bin/tasks

# all is the default target (what runs when you just type make).
# It depends on $(BIN) (the program).
# So, running make → will try to build bin/tasks.
all: $(BIN)

# This says: to build bin/tasks, first compile the source.
# @mkdir -p bin → makes sure the bin/ folder exists (quietly).
# $(CC) $(CFLAGS) $(SRC) -o $(BIN) → expands to:
#          gcc -Wall -Wextra -std=c11 -O2 src/main.c -o bin/tasks
$(BIN): $(SRC)
	@mkdir -p bin
	$(CC) $(CFLAGS) $(SRC) -o $(BIN)

# run → first builds the program (all), then runs it.
# ./$(BIN) expands to ./bin/tasks.
# So make run both compiles and executes your program.
run: all
	./$(BIN)

# clean → deletes the entire bin directory (compiled files).
# Next build will recreate it from scratch.
# Useful to remove old executables and start fresh.
clean:
	rm -rf bin

# Declares that all, run, and clean are phony targets (not actual files).
# Without this, if you had a file called run in your directory, make run might get confused.
#This guarantees they’re always treated as commands, not files.
.PHONY: all run clean
