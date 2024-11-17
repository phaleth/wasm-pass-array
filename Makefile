sum: sum.c
	clang --target=wasm32-wasi -O3 -flto -Wl,--lto-O3 --sysroot ~/wasm/wasi-libc/sysroot -nostartfiles \
	-Wl,-z,stack-size=2097152 -Wl,--no-entry -Wl,--export=sum -Wl,--export=malloc -Wl,--export=free \
	-Wl,--export=__heap_base -o sum.wasm sum.c
