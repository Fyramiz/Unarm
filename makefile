kernel.elf: src/kernel/boot.s src/kernel/kernel.c
	 aarch64-none-elf-as src/kernel/boot.s -o out/kernel/boot.o
	 aarch64-none-elf-gcc -ffreestanding -c src/kernel/kernel.c -o out/kernel/kernel.o
	 aarch64-none-elf-ld -nostdlib -Tlinker.ld out/kernel/boot.o out/kernel/kernel.o -o out/kernel.elf
