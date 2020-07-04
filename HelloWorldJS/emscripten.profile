include(default)
[settings]
os=Emscripten
arch=wasm
compiler=clang
compiler.version=6.0
compiler.libcxx=libc++

emsdk_installer/1.39.13@bincrafters/stable:arch=x86
[options]
[build_requires]
emsdk_installer/1.39.13@bincrafters/stable
[env]
