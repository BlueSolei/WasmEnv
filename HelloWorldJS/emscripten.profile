include(default)
[settings]
os=Emscripten
arch=wasm
compiler=clang
compiler.version=6.0
compiler.libcxx=libc++

nodejs:os=Windows
nodejs:arch=x86_64
[options]

[build_requires]
emsdk_installer/2.0.11
nodejs/12.14.1
[env]
