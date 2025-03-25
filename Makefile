build:
	mkdir build
	riscv64-unknown-elf-as -g -o app.o app.s
	riscv64-unknown-elf-ld -o app app.o
	mv app.o app build

debug: clean build
	qemu-riscv64 -g 8080 ./build/app & riscv64-elf-gdb --quiet ./build/app <debug

run: clean build
	./build/app

clean:
	rm -rf build


