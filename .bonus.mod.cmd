savedcmd_bonus.mod := printf '%s\n'   bonus.o | awk '!x[$$0]++ { print("./"$$0) }' > bonus.mod
