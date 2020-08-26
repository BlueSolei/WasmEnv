rd /q/s build
call conan install . -if build -pr:h emscripten.profile 
call build\activate.bat
call emcmake cmake -S . -B build
call emmake cmake --build build --parallel 8
cmake --install build
call build\deactivate.bat
