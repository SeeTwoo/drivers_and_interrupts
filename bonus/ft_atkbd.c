#include <asm/io.h>
#include <linux/init.h>
#include <linux/interrupt.h>
#include <linux/module.h>
#include <linux/printk.h>
#include <linux/tty.h>
#include <linux/tty_flip.h>
#include <linux/vt_kern.h>

#ifndef KEYB_IRQ
# define KEYB_IRQ 1
#endif

#ifndef DEV_NAME
# define DEV_NAME "ft_keyb"
#endif

static bool	shift_pressed;

static const char	scancode_to_ascii[] = {
	0,  27, '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '=', '\b',
  '\t', 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', '[', ']', '\n',
     0, 'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', ';', '\'', '`',  0,
  '\\', 'z', 'x', 'c', 'v', 'b', 'n', 'm', ',', '.', '/',   0, '*',   0, ' '
};

static const char	shift_scancode_to_ascii[] = {
	0,  27, '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '_', '=', '\b',
  '\t', 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', '[', ']', '\n',
     0, 'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', ':', '\'', '`',  0,
  '|', 'z', 'x', 'c', 'v', 'b', 'n', 'm', ',', '.', '/',   0, '*',   0, ' '
};

struct s_device {
	int		irq;
	void __iomem	*regs;
};

static struct s_device	my_dev;

static void	send_to_tty(char ch) {
	struct tty_struct	*tty = vc_cons[fg_console].d->port.tty;

	if (!tty)
		return ;
	tty_insert_flip_char(tty->port, ch, TTY_NORMAL);
	tty_flip_buffer_push(tty->port);
}

static irqreturn_t	kdb_irq_handler(int irq, void *dev_id)
{
	unsigned char	scancode = inb(0x60);
	char		c = 0;

	if (scancode == 0x36 || scancode == 0x2A) {
		shift_pressed = true;
		return IRQ_HANDLED;
	} else if (scancode == 0xb6 || scancode == 0xAA) {
		shift_pressed = false;
		return IRQ_HANDLED;
	} else if (scancode & 0x80) {
		return IRQ_HANDLED;
	} else if (scancode >= ARRAY_SIZE(scancode_to_ascii)) {
		return IRQ_HANDLED;
	}
	if (shift_pressed)
		c = shift_scancode_to_ascii[scancode];
	else
		c = scancode_to_ascii[scancode];
	if (c)
		send_to_tty(c);
	return IRQ_HANDLED;
}

static int __init hello_1_init(void)
{
	pr_info("loading ft_atkbd\n");

	int	ret = request_irq(KEYB_IRQ, kdb_irq_handler, IRQF_SHARED,
				  DEV_NAME, (void *)(&my_dev));
	if (ret) {
		pr_err("Failed to reserve IRQ");
		return ret;
	}
	shift_pressed = false;
	return 0;
}

static void __exit hello_1_exit(void)
{
	free_irq(KEYB_IRQ, (void *)(&my_dev));
	pr_info("unloading ft_atkbd\n");
}

late_initcall(hello_1_init);
module_exit(hello_1_exit);

MODULE_LICENSE("GPL");
