#include <asm/io.h>
#include <linux/init.h>
#include <linux/input.h>
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

static struct input_dev	*ft_keyboard;

static struct s_device	my_dev;

static irqreturn_t	kdb_irq_handler(int irq, void *dev_id)
{
	unsigned char	scancode = inb(0x60);
	int		value = 1;

	if (scancode & 0x80) {
		scancode -= 0x80;
		value = 0;
	}
	input_report_key(ft_keyboard, scancode, value);
	input_sync(ft_keyboard);
	return IRQ_HANDLED;
}

#define MAX_KEY 0x58

static int __init hello_1_init(void)
{
	pr_info("loading ft_atkbd\n");

	int	ret = request_irq(KEYB_IRQ, kdb_irq_handler, IRQF_SHARED,
				  DEV_NAME, (void *)(&my_dev));
	if (ret) {
		pr_err("Failed to reserve IRQ");
		return ret;
	}
	ft_keyboard = input_allocate_device();
	if (!ft_keyboard) {
		printk(KERN_ERR "ft_atkbd.c: Not enough memory\n");
		ret = -ENOMEM;
		goto err_free_irq;
	}
	set_bit(EV_KEY; ft_keyboard->evbit);
	for (int i = 0; i <= MAX_KEY; i++)
		setbit(i, ft_keyboard->keybit);
	ret = input_register_device(ft_keyboard);
	if (ret) {
		printk(KERN_ERR "ft_atkbd.c: Failed to register device\n");
		goto err_free_dev;
	}
	return 0;
err_free_dev:
	input_free_device(ft_keyboard);
err_free_irq:
	free_irq(KEYB_IRQ, (void *)(&my_dev));;;;;;;;
	return ret;
}

static void __exit hello_1_exit(void)
{
	free_irq(KEYB_IRQ, (void *)(&my_dev));
	input_unregister_device(ft_keyboard);
	pr_info("unloading ft_atkbd\n");
}

late_initcall(hello_1_init);
module_exit(hello_1_exit);

MODULE_LICENSE("GPL");
