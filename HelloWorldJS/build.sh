conan install . -if build -pr:h emscripten.profile --build=missing
source build/activate.sh
emcmake cmake -S . -B build
emmake cmake --build build --parallel 8 
cmake --install build
source build/deactivate.sh
