savedcmd_ft_logger.mod := printf '%s\n'   main.o dvorak_keymap.o | awk '!x[$$0]++ { print("./"$$0) }' > ft_logger.mod
