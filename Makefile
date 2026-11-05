# Run the recipes with Windows cmd, also when Git's sh is on the PATH
SHELL = cmd.exe

# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -std=c++23 -Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion -Werror

# Folder with the .cpp files to compile: the only line to change
SRC_DIR = scratch

# Folder for object files (what the compiler produces)
BUILD_DIR = build

# Folder for the executable (what the linker produces)
BIN_DIR = bin

# Every .cpp file in SRC_DIR
SRCS = $(wildcard $(SRC_DIR)/*.cpp)

# One object file in BUILD_DIR for each .cpp file
OBJS = $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%.o,$(SRCS))

# Target executable
TARGET = $(BIN_DIR)\main.exe

# Default rule to build and run the executable
all: $(TARGET) run

# Rule to link the object files into the target executable
$(TARGET): $(OBJS)
	@if not exist $(BIN_DIR) mkdir $(BIN_DIR)
	@$(CXX) $(CXXFLAGS) $(OBJS) -o $(TARGET)

# Rule to compile one .cpp file into its object file
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	@if not exist $(BUILD_DIR) mkdir $(BUILD_DIR)
	@$(CXX) $(CXXFLAGS) -c $< -o $@

# Rule to run the executable
run: $(TARGET)
	$(TARGET)

# Clean rule to remove both folders and everything in them
clean:
	@if exist $(BUILD_DIR) rmdir /s /q $(BUILD_DIR)
	@if exist $(BIN_DIR) rmdir /s /q $(BIN_DIR)

re: clean run
