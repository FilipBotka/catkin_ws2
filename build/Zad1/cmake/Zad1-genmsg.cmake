# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "Zad1: 1 messages, 1 services")

set(MSG_I_FLAGS "-IZad1:/home/filip/catkin_ws2/src/Zad1/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(Zad1_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/filip/catkin_ws2/src/Zad1/msg/Data.msg" NAME_WE)
add_custom_target(_Zad1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Zad1" "/home/filip/catkin_ws2/src/Zad1/msg/Data.msg" ""
)

get_filename_component(_filename "/home/filip/catkin_ws2/src/Zad1/srv/Move.srv" NAME_WE)
add_custom_target(_Zad1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Zad1" "/home/filip/catkin_ws2/src/Zad1/srv/Move.srv" "Zad1/Data"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(Zad1
  "/home/filip/catkin_ws2/src/Zad1/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Zad1
)

### Generating Services
_generate_srv_cpp(Zad1
  "/home/filip/catkin_ws2/src/Zad1/srv/Move.srv"
  "${MSG_I_FLAGS}"
  "/home/filip/catkin_ws2/src/Zad1/msg/Data.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Zad1
)

### Generating Module File
_generate_module_cpp(Zad1
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Zad1
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(Zad1_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(Zad1_generate_messages Zad1_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/filip/catkin_ws2/src/Zad1/msg/Data.msg" NAME_WE)
add_dependencies(Zad1_generate_messages_cpp _Zad1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filip/catkin_ws2/src/Zad1/srv/Move.srv" NAME_WE)
add_dependencies(Zad1_generate_messages_cpp _Zad1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Zad1_gencpp)
add_dependencies(Zad1_gencpp Zad1_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Zad1_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(Zad1
  "/home/filip/catkin_ws2/src/Zad1/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Zad1
)

### Generating Services
_generate_srv_eus(Zad1
  "/home/filip/catkin_ws2/src/Zad1/srv/Move.srv"
  "${MSG_I_FLAGS}"
  "/home/filip/catkin_ws2/src/Zad1/msg/Data.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Zad1
)

### Generating Module File
_generate_module_eus(Zad1
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Zad1
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(Zad1_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(Zad1_generate_messages Zad1_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/filip/catkin_ws2/src/Zad1/msg/Data.msg" NAME_WE)
add_dependencies(Zad1_generate_messages_eus _Zad1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filip/catkin_ws2/src/Zad1/srv/Move.srv" NAME_WE)
add_dependencies(Zad1_generate_messages_eus _Zad1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Zad1_geneus)
add_dependencies(Zad1_geneus Zad1_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Zad1_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(Zad1
  "/home/filip/catkin_ws2/src/Zad1/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Zad1
)

### Generating Services
_generate_srv_lisp(Zad1
  "/home/filip/catkin_ws2/src/Zad1/srv/Move.srv"
  "${MSG_I_FLAGS}"
  "/home/filip/catkin_ws2/src/Zad1/msg/Data.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Zad1
)

### Generating Module File
_generate_module_lisp(Zad1
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Zad1
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(Zad1_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(Zad1_generate_messages Zad1_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/filip/catkin_ws2/src/Zad1/msg/Data.msg" NAME_WE)
add_dependencies(Zad1_generate_messages_lisp _Zad1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filip/catkin_ws2/src/Zad1/srv/Move.srv" NAME_WE)
add_dependencies(Zad1_generate_messages_lisp _Zad1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Zad1_genlisp)
add_dependencies(Zad1_genlisp Zad1_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Zad1_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(Zad1
  "/home/filip/catkin_ws2/src/Zad1/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Zad1
)

### Generating Services
_generate_srv_nodejs(Zad1
  "/home/filip/catkin_ws2/src/Zad1/srv/Move.srv"
  "${MSG_I_FLAGS}"
  "/home/filip/catkin_ws2/src/Zad1/msg/Data.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Zad1
)

### Generating Module File
_generate_module_nodejs(Zad1
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Zad1
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(Zad1_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(Zad1_generate_messages Zad1_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/filip/catkin_ws2/src/Zad1/msg/Data.msg" NAME_WE)
add_dependencies(Zad1_generate_messages_nodejs _Zad1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filip/catkin_ws2/src/Zad1/srv/Move.srv" NAME_WE)
add_dependencies(Zad1_generate_messages_nodejs _Zad1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Zad1_gennodejs)
add_dependencies(Zad1_gennodejs Zad1_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Zad1_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(Zad1
  "/home/filip/catkin_ws2/src/Zad1/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Zad1
)

### Generating Services
_generate_srv_py(Zad1
  "/home/filip/catkin_ws2/src/Zad1/srv/Move.srv"
  "${MSG_I_FLAGS}"
  "/home/filip/catkin_ws2/src/Zad1/msg/Data.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Zad1
)

### Generating Module File
_generate_module_py(Zad1
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Zad1
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(Zad1_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(Zad1_generate_messages Zad1_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/filip/catkin_ws2/src/Zad1/msg/Data.msg" NAME_WE)
add_dependencies(Zad1_generate_messages_py _Zad1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filip/catkin_ws2/src/Zad1/srv/Move.srv" NAME_WE)
add_dependencies(Zad1_generate_messages_py _Zad1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Zad1_genpy)
add_dependencies(Zad1_genpy Zad1_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Zad1_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Zad1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Zad1
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(Zad1_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(Zad1_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Zad1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Zad1
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(Zad1_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(Zad1_generate_messages_eus std_srvs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Zad1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Zad1
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(Zad1_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(Zad1_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Zad1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Zad1
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(Zad1_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(Zad1_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Zad1)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Zad1\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Zad1
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(Zad1_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(Zad1_generate_messages_py std_srvs_generate_messages_py)
endif()
