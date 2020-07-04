cmake_minimum_required(VERSION 2.8)

project(hello-world)

add_executable(${PROJECT_NAME} main.cpp)

set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ".html" LINK_FLAGS
                                                                "--emrun")

install(
  TARGETS ${PROJECT_NAME}
  RUNTIME DESTINATION bin
  LIBRARY DESTINATION lib
  ARCHIVE DESTINATION lib)

install(
  FILES ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${PROJECT_NAME}.js
        ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${PROJECT_NAME}.wasm
        ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${PROJECT_NAME}.html DESTINATION bin)
