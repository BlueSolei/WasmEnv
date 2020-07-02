conan install . -if build -pr:h emscripten.profile --build=missing 
source build/activate.sh
emcmake cmake -S . -B build
emmake make -C build
source build/deactivate.sh