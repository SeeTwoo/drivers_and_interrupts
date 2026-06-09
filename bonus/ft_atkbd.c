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

	if (scancode & 0x80)
		return IRQ_HANDLED;
	switch (scancode) {
		case 0x13: c = 'r'; break;
		case 0x18: c = 'o'; break;
		case 0x14: c = 't'; break;
		case 0x1c: c = '\n'; break;
		default: break;
	}
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
