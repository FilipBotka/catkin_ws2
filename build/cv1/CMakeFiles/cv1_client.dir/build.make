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
include cv1/CMakeFiles/cv1_client.dir/depend.make

# Include the progress variables for this target.
include cv1/CMakeFiles/cv1_client.dir/progress.make

# Include the compile flags for this target's objects.
include cv1/CMakeFiles/cv1_client.dir/flags.make

cv1/CMakeFiles/cv1_client.dir/src/client.cpp.o: cv1/CMakeFiles/cv1_client.dir/flags.make
cv1/CMakeFiles/cv1_client.dir/src/client.cpp.o: /home/filip/catkin_ws2/src/cv1/src/client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/filip/catkin_ws2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object cv1/CMakeFiles/cv1_client.dir/src/client.cpp.o"
	cd /home/filip/catkin_ws2/build/cv1 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cv1_client.dir/src/client.cpp.o -c /home/filip/catkin_ws2/src/cv1/src/client.cpp

cv1/CMakeFiles/cv1_client.dir/src/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cv1_client.dir/src/client.cpp.i"
	cd /home/filip/catkin_ws2/build/cv1 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/filip/catkin_ws2/src/cv1/src/client.cpp > CMakeFiles/cv1_client.dir/src/client.cpp.i

cv1/CMakeFiles/cv1_client.dir/src/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cv1_client.dir/src/client.cpp.s"
	cd /home/filip/catkin_ws2/build/cv1 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/filip/catkin_ws2/src/cv1/src/client.cpp -o CMakeFiles/cv1_client.dir/src/client.cpp.s

# Object files for target cv1_client
cv1_client_OBJECTS = \
"CMakeFiles/cv1_client.dir/src/client.cpp.o"

# External object files for target cv1_client
cv1_client_EXTERNAL_OBJECTS =

/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: cv1/CMakeFiles/cv1_client.dir/src/client.cpp.o
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: cv1/CMakeFiles/cv1_client.dir/build.make
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: /opt/ros/noetic/lib/libroscpp.so
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: /opt/ros/noetic/lib/librosconsole.so
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: /opt/ros/noetic/lib/librostime.so
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: /opt/ros/noetic/lib/libcpp_common.so
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/filip/catkin_ws2/devel/lib/cv1/cv1_client: cv1/CMakeFiles/cv1_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/filip/catkin_ws2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/filip/catkin_ws2/devel/lib/cv1/cv1_client"
	cd /home/filip/catkin_ws2/build/cv1 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cv1_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cv1/CMakeFiles/cv1_client.dir/build: /home/filip/catkin_ws2/devel/lib/cv1/cv1_client

.PHONY : cv1/CMakeFiles/cv1_client.dir/build

cv1/CMakeFiles/cv1_client.dir/clean:
	cd /home/filip/catkin_ws2/build/cv1 && $(CMAKE_COMMAND) -P CMakeFiles/cv1_client.dir/cmake_clean.cmake
.PHONY : cv1/CMakeFiles/cv1_client.dir/clean

cv1/CMakeFiles/cv1_client.dir/depend:
	cd /home/filip/catkin_ws2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/filip/catkin_ws2/src /home/filip/catkin_ws2/src/cv1 /home/filip/catkin_ws2/build /home/filip/catkin_ws2/build/cv1 /home/filip/catkin_ws2/build/cv1/CMakeFiles/cv1_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cv1/CMakeFiles/cv1_client.dir/depend

