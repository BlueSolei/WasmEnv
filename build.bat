conan install . -if build -pr emscripten.profile
call build\activate.bat
call emconfigure cmake -S . -B build
call emmake make -C build
call build\deactivate.bat
