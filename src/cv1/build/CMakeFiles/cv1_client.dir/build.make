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
CMAKE_SOURCE_DIR = /home/filip/catkin_ws2/src/cv1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/filip/catkin_ws2/src/cv1/build

# Include any dependencies generated for this target.
include CMakeFiles/cv1_client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cv1_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cv1_client.dir/flags.make

CMakeFiles/cv1_client.dir/src/client.cpp.o: CMakeFiles/cv1_client.dir/flags.make
CMakeFiles/cv1_client.dir/src/client.cpp.o: ../src/client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/filip/catkin_ws2/src/cv1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cv1_client.dir/src/client.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cv1_client.dir/src/client.cpp.o -c /home/filip/catkin_ws2/src/cv1/src/client.cpp

CMakeFiles/cv1_client.dir/src/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cv1_client.dir/src/client.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/filip/catkin_ws2/src/cv1/src/client.cpp > CMakeFiles/cv1_client.dir/src/client.cpp.i

CMakeFiles/cv1_client.dir/src/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cv1_client.dir/src/client.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/filip/catkin_ws2/src/cv1/src/client.cpp -o CMakeFiles/cv1_client.dir/src/client.cpp.s

# Object files for target cv1_client
cv1_client_OBJECTS = \
"CMakeFiles/cv1_client.dir/src/client.cpp.o"

# External object files for target cv1_client
cv1_client_EXTERNAL_OBJECTS =

devel/lib/cv1/cv1_client: CMakeFiles/cv1_client.dir/src/client.cpp.o
devel/lib/cv1/cv1_client: CMakeFiles/cv1_client.dir/build.make
devel/lib/cv1/cv1_client: /opt/ros/noetic/lib/libroscpp.so
devel/lib/cv1/cv1_client: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/cv1/cv1_client: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
devel/lib/cv1/cv1_client: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
devel/lib/cv1/cv1_client: /opt/ros/noetic/lib/librosconsole.so
devel/lib/cv1/cv1_client: /opt/ros/noetic/lib/librosconsole_log4cxx.so
devel/lib/cv1/cv1_client: /opt/ros/noetic/lib/librosconsole_backend_interface.so
devel/lib/cv1/cv1_client: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
devel/lib/cv1/cv1_client: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
devel/lib/cv1/cv1_client: /opt/ros/noetic/lib/libxmlrpcpp.so
devel/lib/cv1/cv1_client: /opt/ros/noetic/lib/libroscpp_serialization.so
devel/lib/cv1/cv1_client: /opt/ros/noetic/lib/librostime.so
devel/lib/cv1/cv1_client: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
devel/lib/cv1/cv1_client: /opt/ros/noetic/lib/libcpp_common.so
devel/lib/cv1/cv1_client: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
devel/lib/cv1/cv1_client: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
devel/lib/cv1/cv1_client: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
devel/lib/cv1/cv1_client: CMakeFiles/cv1_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/filip/catkin_ws2/src/cv1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable devel/lib/cv1/cv1_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cv1_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cv1_client.dir/build: devel/lib/cv1/cv1_client

.PHONY : CMakeFiles/cv1_client.dir/build

CMakeFiles/cv1_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cv1_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cv1_client.dir/clean

CMakeFiles/cv1_client.dir/depend:
	cd /home/filip/catkin_ws2/src/cv1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/filip/catkin_ws2/src/cv1 /home/filip/catkin_ws2/src/cv1 /home/filip/catkin_ws2/src/cv1/build /home/filip/catkin_ws2/src/cv1/build /home/filip/catkin_ws2/src/cv1/build/CMakeFiles/cv1_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cv1_client.dir/depend
