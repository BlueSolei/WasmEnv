rd /q/s build
call conan install . -if build -pr:h emscripten.profile --build=missing
call build\activate.bat
call emcmake cmake -S . -B build
call emmake cmake --build build --parallel 8 
call build\deactivate.bat
cmake --install build
