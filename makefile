cross = aarch-none-elf-
cc = ${cross}gcc
as = ${cross}as


kernel: src/kernel/boot.s src/kernel/kernel.c
	 mkdir out/
	 mkdir out/kernel
	 mkdir out/core
	 aarch64-none-elf-as src/kernel/boot.s -o out/kernel/boot.o
	 aarch64-none-elf-gcc -ffreestanding -c src/kernel/kernel.c -o out/kernel/kernel.o -I src/include
#	 aarch64-none-elf-gcc -ffreestanding -c src/core/main_operations.c -o out/core/main_operations.o src/include
	 gold -nostdlib -Tlinker.ld -o out/kernel.elf out/kernel/boot.o out/kernel/kernel.o # out/core/main_operations.o
	 rm -rf out/kernel out/core


clean: out/
	rm -rf out/
