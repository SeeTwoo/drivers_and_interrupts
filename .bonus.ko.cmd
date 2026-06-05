savedcmd_bonus.ko := ld -r -m elf_x86_64 -z noexecstack --no-warn-rwx-segments --build-id=sha1  -T /sources/linux-6.18.10/scripts/module.lds -o bonus.ko bonus.o bonus.mod.o .module-common.o
