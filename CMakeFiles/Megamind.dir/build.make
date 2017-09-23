# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_SOURCE_DIR = /home/blaster/Megamind

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/blaster/Megamind

# Include any dependencies generated for this target.
include CMakeFiles/Megamind.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Megamind.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Megamind.dir/flags.make

Megamind_Megamind.ino.cpp: Megamind.ino
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/blaster/Megamind/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Regnerating Megamind.ino Sketch"
	/usr/bin/cmake /home/blaster/Megamind

CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.obj: CMakeFiles/Megamind.dir/flags.make
CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.obj: Megamind_Megamind.ino.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/blaster/Megamind/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.obj"
	/opt/arduino/hardware/tools/avr/bin/avr-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.obj -c /home/blaster/Megamind/Megamind_Megamind.ino.cpp

CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.i"
	/opt/arduino/hardware/tools/avr/bin/avr-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/blaster/Megamind/Megamind_Megamind.ino.cpp > CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.i

CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.s"
	/opt/arduino/hardware/tools/avr/bin/avr-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/blaster/Megamind/Megamind_Megamind.ino.cpp -o CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.s

CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.obj.requires:

.PHONY : CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.obj.requires

CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.obj.provides: CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.obj.requires
	$(MAKE) -f CMakeFiles/Megamind.dir/build.make CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.obj.provides.build
.PHONY : CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.obj.provides

CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.obj.provides.build: CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.obj


# Object files for target Megamind
Megamind_OBJECTS = \
"CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.obj"

# External object files for target Megamind
Megamind_EXTERNAL_OBJECTS =

Megamind.elf: CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.obj
Megamind.elf: CMakeFiles/Megamind.dir/build.make
Megamind.elf: libuno_CORE.a
Megamind.elf: CMakeFiles/Megamind.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/blaster/Megamind/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Megamind.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Megamind.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating EEP image"
	/opt/arduino/hardware/tools/avr/bin/avr-objcopy -O ihex -j .eeprom --set-section-flags=.eeprom=alloc,load --no-change-warnings --change-section-lma .eeprom=0 /home/blaster/Megamind/Megamind.elf /home/blaster/Megamind/Megamind.eep
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating HEX image"
	/opt/arduino/hardware/tools/avr/bin/avr-objcopy -O ihex -R .eeprom /home/blaster/Megamind/Megamind.elf /home/blaster/Megamind/Megamind.hex
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Calculating image size"
	/usr/bin/cmake -DFIRMWARE_IMAGE=/home/blaster/Megamind/Megamind.elf -DMCU=atmega328p -DEEPROM_IMAGE=/home/blaster/Megamind/Megamind.eep -P /home/blaster/Megamind/CMakeFiles/FirmwareSize.cmake

# Rule to build all files generated by this target.
CMakeFiles/Megamind.dir/build: Megamind.elf

.PHONY : CMakeFiles/Megamind.dir/build

CMakeFiles/Megamind.dir/requires: CMakeFiles/Megamind.dir/Megamind_Megamind.ino.cpp.obj.requires

.PHONY : CMakeFiles/Megamind.dir/requires

CMakeFiles/Megamind.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Megamind.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Megamind.dir/clean

CMakeFiles/Megamind.dir/depend: Megamind_Megamind.ino.cpp
	cd /home/blaster/Megamind && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/blaster/Megamind /home/blaster/Megamind /home/blaster/Megamind /home/blaster/Megamind /home/blaster/Megamind/CMakeFiles/Megamind.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Megamind.dir/depend
