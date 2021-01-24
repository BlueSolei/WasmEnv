include(default)
[settings]
os=Emscripten
arch=wasm
compiler=clang
compiler.version=6.0
compiler.libcxx=libc++

[options]
[build_requires]
emsdk_installer/2.0.11
[env]
