# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.17.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.17.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/amaltaas/gnugo-3.8/Code/Build

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/amaltaas/gnugo-3.8/Code/Build

# Include any dependencies generated for this target.
include Utils/CMakeFiles/Utils.dir/depend.make

# Include the progress variables for this target.
include Utils/CMakeFiles/Utils.dir/progress.make

# Include the compile flags for this target's objects.
include Utils/CMakeFiles/Utils.dir/flags.make

Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt.c.o: Utils/CMakeFiles/Utils.dir/flags.make
Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt.c.o: /Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amaltaas/gnugo-3.8/Code/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt.c.o"
	cd /Users/amaltaas/gnugo-3.8/Code/Build/Utils && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt.c.o   -c /Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt.c

Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt.c.i"
	cd /Users/amaltaas/gnugo-3.8/Code/Build/Utils && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt.c > CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt.c.i

Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt.c.s"
	cd /Users/amaltaas/gnugo-3.8/Code/Build/Utils && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt.c -o CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt.c.s

Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt1.c.o: Utils/CMakeFiles/Utils.dir/flags.make
Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt1.c.o: /Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amaltaas/gnugo-3.8/Code/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt1.c.o"
	cd /Users/amaltaas/gnugo-3.8/Code/Build/Utils && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt1.c.o   -c /Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt1.c

Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt1.c.i"
	cd /Users/amaltaas/gnugo-3.8/Code/Build/Utils && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt1.c > CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt1.c.i

Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt1.c.s"
	cd /Users/amaltaas/gnugo-3.8/Code/Build/Utils && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt1.c -o CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt1.c.s

Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/gg_utils.c.o: Utils/CMakeFiles/Utils.dir/flags.make
Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/gg_utils.c.o: /Users/amaltaas/gnugo-3.8/Code/Source/Utils/gg_utils.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amaltaas/gnugo-3.8/Code/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/gg_utils.c.o"
	cd /Users/amaltaas/gnugo-3.8/Code/Build/Utils && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/gg_utils.c.o   -c /Users/amaltaas/gnugo-3.8/Code/Source/Utils/gg_utils.c

Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/gg_utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/gg_utils.c.i"
	cd /Users/amaltaas/gnugo-3.8/Code/Build/Utils && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/amaltaas/gnugo-3.8/Code/Source/Utils/gg_utils.c > CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/gg_utils.c.i

Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/gg_utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/gg_utils.c.s"
	cd /Users/amaltaas/gnugo-3.8/Code/Build/Utils && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/amaltaas/gnugo-3.8/Code/Source/Utils/gg_utils.c -o CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/gg_utils.c.s

Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/random.c.o: Utils/CMakeFiles/Utils.dir/flags.make
Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/random.c.o: /Users/amaltaas/gnugo-3.8/Code/Source/Utils/random.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amaltaas/gnugo-3.8/Code/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/random.c.o"
	cd /Users/amaltaas/gnugo-3.8/Code/Build/Utils && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/random.c.o   -c /Users/amaltaas/gnugo-3.8/Code/Source/Utils/random.c

Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/random.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/random.c.i"
	cd /Users/amaltaas/gnugo-3.8/Code/Build/Utils && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/amaltaas/gnugo-3.8/Code/Source/Utils/random.c > CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/random.c.i

Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/random.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/random.c.s"
	cd /Users/amaltaas/gnugo-3.8/Code/Build/Utils && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/amaltaas/gnugo-3.8/Code/Source/Utils/random.c -o CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/random.c.s

Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/winsocket.c.o: Utils/CMakeFiles/Utils.dir/flags.make
Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/winsocket.c.o: /Users/amaltaas/gnugo-3.8/Code/Source/Utils/winsocket.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amaltaas/gnugo-3.8/Code/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/winsocket.c.o"
	cd /Users/amaltaas/gnugo-3.8/Code/Build/Utils && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/winsocket.c.o   -c /Users/amaltaas/gnugo-3.8/Code/Source/Utils/winsocket.c

Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/winsocket.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/winsocket.c.i"
	cd /Users/amaltaas/gnugo-3.8/Code/Build/Utils && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/amaltaas/gnugo-3.8/Code/Source/Utils/winsocket.c > CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/winsocket.c.i

Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/winsocket.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/winsocket.c.s"
	cd /Users/amaltaas/gnugo-3.8/Code/Build/Utils && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/amaltaas/gnugo-3.8/Code/Source/Utils/winsocket.c -o CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/winsocket.c.s

# Object files for target Utils
Utils_OBJECTS = \
"CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt.c.o" \
"CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt1.c.o" \
"CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/gg_utils.c.o" \
"CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/random.c.o" \
"CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/winsocket.c.o"

# External object files for target Utils
Utils_EXTERNAL_OBJECTS =

Output/lib/libUtils.dylib: Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt.c.o
Output/lib/libUtils.dylib: Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/getopt1.c.o
Output/lib/libUtils.dylib: Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/gg_utils.c.o
Output/lib/libUtils.dylib: Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/random.c.o
Output/lib/libUtils.dylib: Utils/CMakeFiles/Utils.dir/Users/amaltaas/gnugo-3.8/Code/Source/Utils/winsocket.c.o
Output/lib/libUtils.dylib: Utils/CMakeFiles/Utils.dir/build.make
Output/lib/libUtils.dylib: /Library/Developer/CommandLineTools/SDKs/MacOSX11.1.sdk/usr/lib/libcurses.tbd
Output/lib/libUtils.dylib: /Library/Developer/CommandLineTools/SDKs/MacOSX11.1.sdk/usr/lib/libform.tbd
Output/lib/libUtils.dylib: Utils/CMakeFiles/Utils.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/amaltaas/gnugo-3.8/Code/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C shared library ../Output/lib/libUtils.dylib"
	cd /Users/amaltaas/gnugo-3.8/Code/Build/Utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Utils.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Utils/CMakeFiles/Utils.dir/build: Output/lib/libUtils.dylib

.PHONY : Utils/CMakeFiles/Utils.dir/build

Utils/CMakeFiles/Utils.dir/clean:
	cd /Users/amaltaas/gnugo-3.8/Code/Build/Utils && $(CMAKE_COMMAND) -P CMakeFiles/Utils.dir/cmake_clean.cmake
.PHONY : Utils/CMakeFiles/Utils.dir/clean

Utils/CMakeFiles/Utils.dir/depend:
	cd /Users/amaltaas/gnugo-3.8/Code/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/amaltaas/gnugo-3.8/Code/Build /Users/amaltaas/gnugo-3.8/Code/Build/Utils /Users/amaltaas/gnugo-3.8/Code/Build /Users/amaltaas/gnugo-3.8/Code/Build/Utils /Users/amaltaas/gnugo-3.8/Code/Build/Utils/CMakeFiles/Utils.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Utils/CMakeFiles/Utils.dir/depend

