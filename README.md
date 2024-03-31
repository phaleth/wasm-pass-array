# Pass an array of arbitrary size to WebAssembly module
Example on how to create a WASI module for web browsers inspired by:
- [Compiling C to WebAssembly without Emscripten](https://surma.dev/things/c-to-webassembly/)
- [Compiling C to WebAssembly and Running It - without Emscripten](https://depth-first.com/articles/2019/10/16/compiling-c-to-webassembly-and-running-it-without-emscripten/)

# Prerequisites
- `clang`
- `wasi-sysroot` as described [here](https://github.com/jedisct1/libclang_rt.builtins-wasm32.a)
