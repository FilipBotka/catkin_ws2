# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/filip/catkin_ws2/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/filip/catkin_ws2/build

# Include any dependencies generated for this target.
include zad1/CMakeFiles/pub2_node.dir/depend.make

# Include the progress variables for this target.
include zad1/CMakeFiles/pub2_node.dir/progress.make

# Include the compile flags for this target's objects.
include zad1/CMakeFiles/pub2_node.dir/flags.make

zad1/CMakeFiles/pub2_node.dir/src/pub_node.cpp.o: zad1/CMakeFiles/pub2_node.dir/flags.make
zad1/CMakeFiles/pub2_node.dir/src/pub_node.cpp.o: /home/filip/catkin_ws2/src/zad1/src/pub_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/filip/catkin_ws2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object zad1/CMakeFiles/pub2_node.dir/src/pub_node.cpp.o"
	cd /home/filip/catkin_ws2/build/zad1 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pub2_node.dir/src/pub_node.cpp.o -c /home/filip/catkin_ws2/src/zad1/src/pub_node.cpp

zad1/CMakeFiles/pub2_node.dir/src/pub_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pub2_node.dir/src/pub_node.cpp.i"
	cd /home/filip/catkin_ws2/build/zad1 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/filip/catkin_ws2/src/zad1/src/pub_node.cpp > CMakeFiles/pub2_node.dir/src/pub_node.cpp.i

zad1/CMakeFiles/pub2_node.dir/src/pub_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pub2_node.dir/src/pub_node.cpp.s"
	cd /home/filip/catkin_ws2/build/zad1 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/filip/catkin_ws2/src/zad1/src/pub_node.cpp -o CMakeFiles/pub2_node.dir/src/pub_node.cpp.s

zad1/CMakeFiles/pub2_node.dir/src/pub.cpp.o: zad1/CMakeFiles/pub2_node.dir/flags.make
zad1/CMakeFiles/pub2_node.dir/src/pub.cpp.o: /home/filip/catkin_ws2/src/zad1/src/pub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/filip/catkin_ws2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object zad1/CMakeFiles/pub2_node.dir/src/pub.cpp.o"
	cd /home/filip/catkin_ws2/build/zad1 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pub2_node.dir/src/pub.cpp.o -c /home/filip/catkin_ws2/src/zad1/src/pub.cpp

zad1/CMakeFiles/pub2_node.dir/src/pub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pub2_node.dir/src/pub.cpp.i"
	cd /home/filip/catkin_ws2/build/zad1 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/filip/catkin_ws2/src/zad1/src/pub.cpp > CMakeFiles/pub2_node.dir/src/pub.cpp.i

zad1/CMakeFiles/pub2_node.dir/src/pub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pub2_node.dir/src/pub.cpp.s"
	cd /home/filip/catkin_ws2/build/zad1 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/filip/catkin_ws2/src/zad1/src/pub.cpp -o CMakeFiles/pub2_node.dir/src/pub.cpp.s

# Object files for target pub2_node
pub2_node_OBJECTS = \
"CMakeFiles/pub2_node.dir/src/pub_node.cpp.o" \
"CMakeFiles/pub2_node.dir/src/pub.cpp.o"

# External object files for target pub2_node
pub2_node_EXTERNAL_OBJECTS =

/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: zad1/CMakeFiles/pub2_node.dir/src/pub_node.cpp.o
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: zad1/CMakeFiles/pub2_node.dir/src/pub.cpp.o
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: zad1/CMakeFiles/pub2_node.dir/build.make
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: /opt/ros/noetic/lib/libroscpp.so
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: /opt/ros/noetic/lib/librosconsole.so
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: /opt/ros/noetic/lib/librostime.so
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: /opt/ros/noetic/lib/libcpp_common.so
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/filip/catkin_ws2/devel/lib/zad1/pub2_node: zad1/CMakeFiles/pub2_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/filip/catkin_ws2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/filip/catkin_ws2/devel/lib/zad1/pub2_node"
	cd /home/filip/catkin_ws2/build/zad1 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pub2_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
zad1/CMakeFiles/pub2_node.dir/build: /home/filip/catkin_ws2/devel/lib/zad1/pub2_node

.PHONY : zad1/CMakeFiles/pub2_node.dir/build

zad1/CMakeFiles/pub2_node.dir/clean:
	cd /home/filip/catkin_ws2/build/zad1 && $(CMAKE_COMMAND) -P CMakeFiles/pub2_node.dir/cmake_clean.cmake
.PHONY : zad1/CMakeFiles/pub2_node.dir/clean

zad1/CMakeFiles/pub2_node.dir/depend:
	cd /home/filip/catkin_ws2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/filip/catkin_ws2/src /home/filip/catkin_ws2/src/zad1 /home/filip/catkin_ws2/build /home/filip/catkin_ws2/build/zad1 /home/filip/catkin_ws2/build/zad1/CMakeFiles/pub2_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : zad1/CMakeFiles/pub2_node.dir/depend

