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
CMAKE_SOURCE_DIR = /home/filip/catkin_ws2/src/Zad1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/filip/catkin_ws2/src/Zad1/build

# Include any dependencies generated for this target.
include CMakeFiles/pub_node.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pub_node.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pub_node.dir/flags.make

CMakeFiles/pub_node.dir/src/pub_node.cpp.o: CMakeFiles/pub_node.dir/flags.make
CMakeFiles/pub_node.dir/src/pub_node.cpp.o: ../src/pub_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/filip/catkin_ws2/src/Zad1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pub_node.dir/src/pub_node.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pub_node.dir/src/pub_node.cpp.o -c /home/filip/catkin_ws2/src/Zad1/src/pub_node.cpp

CMakeFiles/pub_node.dir/src/pub_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pub_node.dir/src/pub_node.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/filip/catkin_ws2/src/Zad1/src/pub_node.cpp > CMakeFiles/pub_node.dir/src/pub_node.cpp.i

CMakeFiles/pub_node.dir/src/pub_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pub_node.dir/src/pub_node.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/filip/catkin_ws2/src/Zad1/src/pub_node.cpp -o CMakeFiles/pub_node.dir/src/pub_node.cpp.s

CMakeFiles/pub_node.dir/src/pub.cpp.o: CMakeFiles/pub_node.dir/flags.make
CMakeFiles/pub_node.dir/src/pub.cpp.o: ../src/pub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/filip/catkin_ws2/src/Zad1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/pub_node.dir/src/pub.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pub_node.dir/src/pub.cpp.o -c /home/filip/catkin_ws2/src/Zad1/src/pub.cpp

CMakeFiles/pub_node.dir/src/pub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pub_node.dir/src/pub.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/filip/catkin_ws2/src/Zad1/src/pub.cpp > CMakeFiles/pub_node.dir/src/pub.cpp.i

CMakeFiles/pub_node.dir/src/pub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pub_node.dir/src/pub.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/filip/catkin_ws2/src/Zad1/src/pub.cpp -o CMakeFiles/pub_node.dir/src/pub.cpp.s

CMakeFiles/pub_node.dir/src/robot.cpp.o: CMakeFiles/pub_node.dir/flags.make
CMakeFiles/pub_node.dir/src/robot.cpp.o: ../src/robot.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/filip/catkin_ws2/src/Zad1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/pub_node.dir/src/robot.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pub_node.dir/src/robot.cpp.o -c /home/filip/catkin_ws2/src/Zad1/src/robot.cpp

CMakeFiles/pub_node.dir/src/robot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pub_node.dir/src/robot.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/filip/catkin_ws2/src/Zad1/src/robot.cpp > CMakeFiles/pub_node.dir/src/robot.cpp.i

CMakeFiles/pub_node.dir/src/robot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pub_node.dir/src/robot.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/filip/catkin_ws2/src/Zad1/src/robot.cpp -o CMakeFiles/pub_node.dir/src/robot.cpp.s

# Object files for target pub_node
pub_node_OBJECTS = \
"CMakeFiles/pub_node.dir/src/pub_node.cpp.o" \
"CMakeFiles/pub_node.dir/src/pub.cpp.o" \
"CMakeFiles/pub_node.dir/src/robot.cpp.o"

# External object files for target pub_node
pub_node_EXTERNAL_OBJECTS =

devel/lib/Zad1/pub_node: CMakeFiles/pub_node.dir/src/pub_node.cpp.o
devel/lib/Zad1/pub_node: CMakeFiles/pub_node.dir/src/pub.cpp.o
devel/lib/Zad1/pub_node: CMakeFiles/pub_node.dir/src/robot.cpp.o
devel/lib/Zad1/pub_node: CMakeFiles/pub_node.dir/build.make
devel/lib/Zad1/pub_node: /opt/ros/noetic/lib/libtf_conversions.so
devel/lib/Zad1/pub_node: /opt/ros/noetic/lib/libkdl_conversions.so
devel/lib/Zad1/pub_node: /opt/ros/noetic/lib/libtf.so
devel/lib/Zad1/pub_node: /opt/ros/noetic/lib/libtf2_ros.so
devel/lib/Zad1/pub_node: /opt/ros/noetic/lib/libactionlib.so
devel/lib/Zad1/pub_node: /opt/ros/noetic/lib/libmessage_filters.so
devel/lib/Zad1/pub_node: /opt/ros/noetic/lib/libroscpp.so
devel/lib/Zad1/pub_node: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/Zad1/pub_node: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
devel/lib/Zad1/pub_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
devel/lib/Zad1/pub_node: /opt/ros/noetic/lib/libxmlrpcpp.so
devel/lib/Zad1/pub_node: /opt/ros/noetic/lib/libtf2.so
devel/lib/Zad1/pub_node: /opt/ros/noetic/lib/librosconsole.so
devel/lib/Zad1/pub_node: /opt/ros/noetic/lib/librosconsole_log4cxx.so
devel/lib/Zad1/pub_node: /opt/ros/noetic/lib/librosconsole_backend_interface.so
devel/lib/Zad1/pub_node: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
devel/lib/Zad1/pub_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
devel/lib/Zad1/pub_node: /opt/ros/noetic/lib/libeigen_conversions.so
devel/lib/Zad1/pub_node: /usr/lib/liborocos-kdl.so
devel/lib/Zad1/pub_node: /opt/ros/noetic/lib/libroscpp_serialization.so
devel/lib/Zad1/pub_node: /opt/ros/noetic/lib/librostime.so
devel/lib/Zad1/pub_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
devel/lib/Zad1/pub_node: /opt/ros/noetic/lib/libcpp_common.so
devel/lib/Zad1/pub_node: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
devel/lib/Zad1/pub_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
devel/lib/Zad1/pub_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
devel/lib/Zad1/pub_node: CMakeFiles/pub_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/filip/catkin_ws2/src/Zad1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable devel/lib/Zad1/pub_node"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pub_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pub_node.dir/build: devel/lib/Zad1/pub_node

.PHONY : CMakeFiles/pub_node.dir/build

CMakeFiles/pub_node.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pub_node.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pub_node.dir/clean

CMakeFiles/pub_node.dir/depend:
	cd /home/filip/catkin_ws2/src/Zad1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/filip/catkin_ws2/src/Zad1 /home/filip/catkin_ws2/src/Zad1 /home/filip/catkin_ws2/src/Zad1/build /home/filip/catkin_ws2/src/Zad1/build /home/filip/catkin_ws2/src/Zad1/build/CMakeFiles/pub_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pub_node.dir/depend

