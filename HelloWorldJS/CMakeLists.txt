cmake_minimum_required(VERSION 2.8)

project(hello-world)

add_executable(hello-world main.cpp)

add_executable(hello-world-test test.cpp)

install(
  TARGETS hello-world hello-world-test
  RUNTIME DESTINATION bin
  LIBRARY DESTINATION lib
  ARCHIVE DESTINATION lib)

if(EMSCRIPTEN)
  install(FILES ${CMAKE_BINARY_DIR}/hello-world-test.wasm
                ${CMAKE_BINARY_DIR}/hello-world.wasm DESTINATION bin)
endif()

if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX
      ${CMAKE_SOURCE_DIR}
      CACHE PATH "..." FORCE)
endif()

message(STATUS "RUNTIME_OUTPUT_DIRECTORY=${RUNTIME_OUTPUT_DIRECTORY}")
