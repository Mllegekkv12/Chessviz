CC = g++
CFLAGS = -c -Wall
MKDIR_BUILD = mkdir -p build/src
OBJ = $(CC) -c $< -o $@ $(CFLAGS)

default: bin/chess.exe

bin/chess.exe: build/src/main.o build/src/board_print_plain.o build/src/board_start.o build/src/board.o build/src/board_read.o
		mkdir -p bin
		$(CC) $^ -o $@ $(CFLAGS)

build/src/board_print_plain.o: src/board_print_plain.cpp src/board_print_plain.h
		$(MKDIR_BUILD)
		$(OBJ)

build/src/board_start.o: src/board_start.cpp src/board_start.h
		$(MKDIR_BUILD)
		$(OBJ)

build/src/main.o: src/main.cpp 
		$(MKDIR_BUILD)
		$(OBJ)

build/src/board.o: src/board.cpp src/board.h
	$(MKDIR_BUILD)
	$(OBJ)

build/src/board_read.o: src/board_read.cpp src/board_read.h
	$(MKDIR_BUILD)
	$(OBJ)

clean:
		rm -rf build bin