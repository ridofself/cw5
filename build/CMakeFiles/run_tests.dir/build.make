# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rid/cw5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rid/cw5/build

# Include any dependencies generated for this target.
include CMakeFiles/run_tests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/run_tests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/run_tests.dir/flags.make

CMakeFiles/run_tests.dir/src/test_main.c.o: CMakeFiles/run_tests.dir/flags.make
CMakeFiles/run_tests.dir/src/test_main.c.o: ../src/test_main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rid/cw5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/run_tests.dir/src/test_main.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/run_tests.dir/src/test_main.c.o   -c /home/rid/cw5/src/test_main.c

CMakeFiles/run_tests.dir/src/test_main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/run_tests.dir/src/test_main.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rid/cw5/src/test_main.c > CMakeFiles/run_tests.dir/src/test_main.c.i

CMakeFiles/run_tests.dir/src/test_main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/run_tests.dir/src/test_main.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rid/cw5/src/test_main.c -o CMakeFiles/run_tests.dir/src/test_main.c.s

CMakeFiles/run_tests.dir/src/test_main.c.o.requires:

.PHONY : CMakeFiles/run_tests.dir/src/test_main.c.o.requires

CMakeFiles/run_tests.dir/src/test_main.c.o.provides: CMakeFiles/run_tests.dir/src/test_main.c.o.requires
	$(MAKE) -f CMakeFiles/run_tests.dir/build.make CMakeFiles/run_tests.dir/src/test_main.c.o.provides.build
.PHONY : CMakeFiles/run_tests.dir/src/test_main.c.o.provides

CMakeFiles/run_tests.dir/src/test_main.c.o.provides.build: CMakeFiles/run_tests.dir/src/test_main.c.o


# Object files for target run_tests
run_tests_OBJECTS = \
"CMakeFiles/run_tests.dir/src/test_main.c.o"

# External object files for target run_tests
run_tests_EXTERNAL_OBJECTS =

run_tests: CMakeFiles/run_tests.dir/src/test_main.c.o
run_tests: CMakeFiles/run_tests.dir/build.make
run_tests: CMakeFiles/run_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rid/cw5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable run_tests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/run_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/run_tests.dir/build: run_tests

.PHONY : CMakeFiles/run_tests.dir/build

CMakeFiles/run_tests.dir/requires: CMakeFiles/run_tests.dir/src/test_main.c.o.requires

.PHONY : CMakeFiles/run_tests.dir/requires

CMakeFiles/run_tests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/run_tests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/run_tests.dir/clean

CMakeFiles/run_tests.dir/depend:
	cd /home/rid/cw5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rid/cw5 /home/rid/cw5 /home/rid/cw5/build /home/rid/cw5/build /home/rid/cw5/build/CMakeFiles/run_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/run_tests.dir/depend
