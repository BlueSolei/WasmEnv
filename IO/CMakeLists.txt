cmake_minimum_required(VERSION 2.8)

project(io)

add_executable(io-write ./test_idbfs_sync.c)
target_link_libraries(io-write idbfs.js)
target_link_options(io-write PRIVATE "--emrun")
# Here we define this is a WRITE test
target_compile_definitions(io-write PRIVATE IDBFS_TEST_FIRST=1)

add_executable(io-read ./test_idbfs_sync.c)
target_link_libraries(io-read idbfs.js)
target_link_options(io-read PRIVATE "--emrun")
# Here we define this is a READ test
target_compile_definitions(io-read PRIVATE IDBFS_TEST_FIRST=0)

install(
  TARGETS io-write io-read
  RUNTIME DESTINATION bin
  LIBRARY DESTINATION lib
  ARCHIVE DESTINATION lib)

install(FILES ${CMAKE_BINARY_DIR}/io-write.wasm ${CMAKE_BINARY_DIR}/io-read.wasm
        DESTINATION bin)

if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX
      ${CMAKE_SOURCE_DIR}
      CACHE PATH "..." FORCE)
endif()
