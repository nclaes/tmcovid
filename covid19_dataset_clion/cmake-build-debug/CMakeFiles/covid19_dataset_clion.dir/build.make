# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /cygdrive/c/Users/peter/.CLion2019.3/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/peter/.CLion2019.3/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/c/Users/peter/Documents/github/tmcovid/covid19_dataset_clion

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/peter/Documents/github/tmcovid/covid19_dataset_clion/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/covid19_dataset_clion.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/covid19_dataset_clion.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/covid19_dataset_clion.dir/flags.make

CMakeFiles/covid19_dataset_clion.dir/main5.cpp.o: CMakeFiles/covid19_dataset_clion.dir/flags.make
CMakeFiles/covid19_dataset_clion.dir/main5.cpp.o: ../main5.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/peter/Documents/github/tmcovid/covid19_dataset_clion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/covid19_dataset_clion.dir/main5.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/covid19_dataset_clion.dir/main5.cpp.o -c /cygdrive/c/Users/peter/Documents/github/tmcovid/covid19_dataset_clion/main5.cpp

CMakeFiles/covid19_dataset_clion.dir/main5.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/covid19_dataset_clion.dir/main5.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/peter/Documents/github/tmcovid/covid19_dataset_clion/main5.cpp > CMakeFiles/covid19_dataset_clion.dir/main5.cpp.i

CMakeFiles/covid19_dataset_clion.dir/main5.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/covid19_dataset_clion.dir/main5.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/peter/Documents/github/tmcovid/covid19_dataset_clion/main5.cpp -o CMakeFiles/covid19_dataset_clion.dir/main5.cpp.s

# Object files for target covid19_dataset_clion
covid19_dataset_clion_OBJECTS = \
"CMakeFiles/covid19_dataset_clion.dir/main5.cpp.o"

# External object files for target covid19_dataset_clion
covid19_dataset_clion_EXTERNAL_OBJECTS =

covid19_dataset_clion.exe: CMakeFiles/covid19_dataset_clion.dir/main5.cpp.o
covid19_dataset_clion.exe: CMakeFiles/covid19_dataset_clion.dir/build.make
covid19_dataset_clion.exe: CMakeFiles/covid19_dataset_clion.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/peter/Documents/github/tmcovid/covid19_dataset_clion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable covid19_dataset_clion.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/covid19_dataset_clion.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/covid19_dataset_clion.dir/build: covid19_dataset_clion.exe

.PHONY : CMakeFiles/covid19_dataset_clion.dir/build

CMakeFiles/covid19_dataset_clion.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/covid19_dataset_clion.dir/cmake_clean.cmake
.PHONY : CMakeFiles/covid19_dataset_clion.dir/clean

CMakeFiles/covid19_dataset_clion.dir/depend:
	cd /cygdrive/c/Users/peter/Documents/github/tmcovid/covid19_dataset_clion/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/peter/Documents/github/tmcovid/covid19_dataset_clion /cygdrive/c/Users/peter/Documents/github/tmcovid/covid19_dataset_clion /cygdrive/c/Users/peter/Documents/github/tmcovid/covid19_dataset_clion/cmake-build-debug /cygdrive/c/Users/peter/Documents/github/tmcovid/covid19_dataset_clion/cmake-build-debug /cygdrive/c/Users/peter/Documents/github/tmcovid/covid19_dataset_clion/cmake-build-debug/CMakeFiles/covid19_dataset_clion.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/covid19_dataset_clion.dir/depend
