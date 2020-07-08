cmake_minimum_required(VERSION 2.8)

project(hello-world)

add_executable(${PROJECT_NAME} main.cpp src/Greet.cpp src/Greet.h)

target_compile_options(${PROJECT_NAME} PRIVATE "-g4")
set_target_properties(
  ${PROJECT_NAME}
  PROPERTIES
    SUFFIX ".html"
    LINK_FLAGS
    "-s NO_FILESYSTEM=1 -s \"EXPORTED_FUNCTIONS=[\"_main\", \"_Greet\"]\" --emrun -g4 --source-map-base file:///C:/dev/expr/WasmEnv/HelloWorldHTML/build/"
)

install(
  TARGETS ${PROJECT_NAME}
  RUNTIME DESTINATION bin
  LIBRARY DESTINATION lib
  ARCHIVE DESTINATION lib)

install(
  FILES ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${PROJECT_NAME}.js
        ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${PROJECT_NAME}.wasm
        ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${PROJECT_NAME}.html DESTINATION bin)
