savedcmd_mandatory.mod := printf '%s\n'   mandatory.o | awk '!x[$$0]++ { print("./"$$0) }' > mandatory.mod
