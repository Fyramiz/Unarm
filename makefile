
kernel.bin: kernel/boot.s
	as -o out/kernel/boot.o kernel/boot.s
	ld -o out/executable/kernel.bin out/kernel/boot.o -T linker.ld
	objcopy -O binary out/executable/kernel.bin out/flashable/kernel.bin
