include(default)
[settings]
os=Emscripten
arch=wasm
compiler=clang
compiler.version=6.0
compiler.libcxx=libc++

[options]
[build_requires]
emsdk_installer/1.39.13@bincrafters/stable
[env]
