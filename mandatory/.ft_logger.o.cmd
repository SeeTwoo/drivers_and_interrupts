savedcmd_ft_logger.o := ld -m elf_x86_64 -z noexecstack --no-warn-rwx-segments   -r -o ft_logger.o @ft_logger.mod  ; /sources/linux-6.18.10/tools/objtool/objtool --hacks=jump_label --hacks=noinstr --hacks=skylake --ibt --orc --retpoline --rethunk --static-call --uaccess --prefix=16  --link  --module ft_logger.o

ft_logger.o: $(wildcard /sources/linux-6.18.10/tools/objtool/objtool)
