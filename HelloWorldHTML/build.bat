conan install . -if build -pr:h emscripten.profile --build=missing
call build\activate.bat
call emcmake cmake -S . -B build
call emmake make -C build
call build\deactivate.bat

