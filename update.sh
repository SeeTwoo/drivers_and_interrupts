cp -v bonus/ft_atkbd.c /sources/linux-6.18.10/drivers/input/keyboard && \
make -j$(nproc) -C /sources/linux-6.18.10 && \
cp -v /sources/linux-6.18.10/arch/x86/boot/bzImage /boot/vmlinuz-6.18.10-ft_atkbd
