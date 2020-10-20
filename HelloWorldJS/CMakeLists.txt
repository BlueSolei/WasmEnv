cmake_minimum_required(VERSION 3.16)

project(hello-world)

add_library(hello-world-lib my_lib.cpp)
target_compile_options(hello-world-lib PRIVATE "-g4")

add_executable(hello-world main.cpp)
target_link_libraries(hello-world PRIVATE hello-world-lib)
target_compile_options(hello-world PRIVATE "-g4")
target_link_options(hello-world PRIVATE "SHELL: -g4")

add_executable(hello-world-test test.cpp)
target_compile_options(hello-world-test PRIVATE "-g4")
target_link_options(hello-world-test PRIVATE "SHELL: -g4")

install(
  TARGETS hello-world hello-world-test
  RUNTIME DESTINATION bin
  LIBRARY DESTINATION lib
  ARCHIVE DESTINATION lib)

if(EMSCRIPTEN)
  install(FILES ${CMAKE_BINARY_DIR}/hello-world-test.wasm
                ${CMAKE_BINARY_DIR}/hello-world.wasm 
                DESTINATION bin)
endif()

if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX
      ${CMAKE_SOURCE_DIR}
      CACHE PATH "..." FORCE)
endif()
