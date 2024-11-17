## Pass an array of arbitrary size to WebAssembly module
Example on how to create a WASI module for web browsers inspired by:
- [Compiling C to WebAssembly without Emscripten](https://surma.dev/things/c-to-webassembly/)
- [Compiling C to WebAssembly and Running It - without Emscripten](https://depth-first.com/articles/2019/10/16/compiling-c-to-webassembly-and-running-it-without-emscripten/)

## Installation of Prerequisites

Install clang:
```shell
cd ~

wget -c https://github.com/llvm/llvm-project/releases/download/llvmorg-17.0.6/clang+llvm-17.0.6-x86_64-linux-gnu-ubuntu-22.04.tar.xz
tar xf clang*-*.tar.xz
mv clang*-*/ clang
rm clang*-*.tar.xz

nano .bashrc
```

Add following to the end of the `.bashrc` file:
```bash
export PATH=$PATH:~/clang/bin
```

```shell
source .bashrc

clang --version
clang++ --version
```

Download and unpack `wasi-sysroot`:
```shell
mkdir wasm
cd wasm

wget https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-24/wasi-sysroot-24.0.tar.gz
tar xf wasi-sysroot-*.tar.gz
rm wasi-sysroot-*.tar.gz
mkdir wasi-libc
mv wasi-sysroot-*/ wasi-libc/sysroot
```

Get `libclang_rt.builtins-wasm32.a`:
```shell
mkdir -p ~/clang/lib/clang/17/lib/wasi
wget https://raw.githubusercontent.com/jedisct1/libclang_rt.builtins-wasm32.a/refs/heads/master/precompiled/llvm-17/libclang_rt.builtins-wasm32.a -O ~/clang/lib/clang/17/lib/wasi/libclang_rt.builtins-wasm32.a
```

Clone and build this project:
```shell
git clone https://github.com/phaleth/wasm-pass-array.git
cd wasm-pass-array
make sum
```
