CC = g++
CFLAGS = -c -Wall -std=c99
MKDIR_BUILD = mkdir -p build/src
OBJ = $(CC) -c $< -o $@ $(CFLAGS)

default: bin/chess.exe

bin/chess.exe: build/src/main.o build/src/board_print_plain.o build/src/board_start.o 
	mkdir -p bin
	$(CC) $^ -o $@ $(CFLAGS)

build/src/main.o: src/main.c
	$(MKDIR_BUILD)
	$(OBJ)

build/src/board_print_plain.o: src/board_print_plain.c src/board_print_plain.h
		$(MKDIR_BUILD)
		$(OBJ)

build/src/board_start.o: src/board_start.c src/board_start.h
		$(MKDIR_BUILD)
		$(OBJ)

clean:
		rm -rf build bin