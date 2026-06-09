cp bonus/ft_atkbd.c /sources/linux-6.18.10/drivers/input/keyboard && \
make -j$(nproc) /sources/linux-6.18.10 && \
cp /sources/linux-6.18.10/arch/x86/boot/bzImage /boot/vmlinuz-6.18.10-ft_atkbd
