# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\UTEC\Ciclo3\TC\ProyectoTeoriaComputacion

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\UTEC\Ciclo3\TC\ProyectoTeoriaComputacion\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/proyectoTeoriaComputacion.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/proyectoTeoriaComputacion.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/proyectoTeoriaComputacion.dir/flags.make

CMakeFiles/proyectoTeoriaComputacion.dir/src/main.cpp.obj: CMakeFiles/proyectoTeoriaComputacion.dir/flags.make
CMakeFiles/proyectoTeoriaComputacion.dir/src/main.cpp.obj: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\UTEC\Ciclo3\TC\ProyectoTeoriaComputacion\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/proyectoTeoriaComputacion.dir/src/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\proyectoTeoriaComputacion.dir\src\main.cpp.obj -c D:\UTEC\Ciclo3\TC\ProyectoTeoriaComputacion\src\main.cpp

CMakeFiles/proyectoTeoriaComputacion.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/proyectoTeoriaComputacion.dir/src/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\UTEC\Ciclo3\TC\ProyectoTeoriaComputacion\src\main.cpp > CMakeFiles\proyectoTeoriaComputacion.dir\src\main.cpp.i

CMakeFiles/proyectoTeoriaComputacion.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/proyectoTeoriaComputacion.dir/src/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\UTEC\Ciclo3\TC\ProyectoTeoriaComputacion\src\main.cpp -o CMakeFiles\proyectoTeoriaComputacion.dir\src\main.cpp.s

# Object files for target proyectoTeoriaComputacion
proyectoTeoriaComputacion_OBJECTS = \
"CMakeFiles/proyectoTeoriaComputacion.dir/src/main.cpp.obj"

# External object files for target proyectoTeoriaComputacion
proyectoTeoriaComputacion_EXTERNAL_OBJECTS =

proyectoTeoriaComputacion.exe: CMakeFiles/proyectoTeoriaComputacion.dir/src/main.cpp.obj
proyectoTeoriaComputacion.exe: CMakeFiles/proyectoTeoriaComputacion.dir/build.make
proyectoTeoriaComputacion.exe: CMakeFiles/proyectoTeoriaComputacion.dir/linklibs.rsp
proyectoTeoriaComputacion.exe: CMakeFiles/proyectoTeoriaComputacion.dir/objects1.rsp
proyectoTeoriaComputacion.exe: CMakeFiles/proyectoTeoriaComputacion.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\UTEC\Ciclo3\TC\ProyectoTeoriaComputacion\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable proyectoTeoriaComputacion.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\proyectoTeoriaComputacion.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/proyectoTeoriaComputacion.dir/build: proyectoTeoriaComputacion.exe

.PHONY : CMakeFiles/proyectoTeoriaComputacion.dir/build

CMakeFiles/proyectoTeoriaComputacion.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\proyectoTeoriaComputacion.dir\cmake_clean.cmake
.PHONY : CMakeFiles/proyectoTeoriaComputacion.dir/clean

CMakeFiles/proyectoTeoriaComputacion.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\UTEC\Ciclo3\TC\ProyectoTeoriaComputacion D:\UTEC\Ciclo3\TC\ProyectoTeoriaComputacion D:\UTEC\Ciclo3\TC\ProyectoTeoriaComputacion\cmake-build-debug D:\UTEC\Ciclo3\TC\ProyectoTeoriaComputacion\cmake-build-debug D:\UTEC\Ciclo3\TC\ProyectoTeoriaComputacion\cmake-build-debug\CMakeFiles\proyectoTeoriaComputacion.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/proyectoTeoriaComputacion.dir/depend

