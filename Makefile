CC := gcc
TARGET := myprogram

ifeq ($(OS),Windows_NT)
    TARGET := myprogram.exe
endif

BUILD_DIR := build
SRC_DIR := src

SRC := $(wildcard $(SRC_DIR)/*.c)
OBJ := $(patsubst $(SRC_DIR)/%.c,$(BUILD_DIR)/%.o,$(SRC))

CFLAGS := -std=c11 -Wall -Wextra -g -Ivendor
CFLAGS += $(shell pkg-config --cflags raylib)

LDLIBS := $(shell pkg-config --libs raylib)

.PHONY: all run clean

all: $(BUILD_DIR)/$(TARGET)

$(BUILD_DIR)/$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $@ $(LDLIBS)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

run: all
	./$(BUILD_DIR)/$(TARGET)

clean:
	rm -rf $(BUILD_DIR)
