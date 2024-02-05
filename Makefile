SRC_DIR = src
BUILD_DIR = build/debug
CC = g++
SRC_FILES = $(wildcard $(SRC_DIR)/*.cpp)
OBJ_NAME = play
INCLUDE_PATHS = -Iinclude/SDL2 -Iinclude/SDL2_image
LIBRARY_FLAGS = $(shell brew --prefix sdl2)/lib/libSDL2.a $(shell brew --prefix sdl2_image)/lib/libSDL2_image.a
COMPILER_FLAGS = -std=c++11 -Wall -O0 -g

all:
	$(CC) $(COMPILER_FLAGS) $(INCLUDE_PATHS) $(LIBRARY_FLAGS) $(SRC_FILES) -o $(BUILD_DIR)/$(OBJ_NAME)



