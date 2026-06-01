#include <linux/module.h>
#include <linux/printk.h>
#include <linux/init.h>
#include <linux/interrupt.h>

#ifndef DA_KEYBOARD_IRQ
# define DA_KEYBOARD_IRQ 1
#endif

#ifndef MY_DEV_NAME
# define MY_DEV_NAME "shit"
#endif

struct s_device {
	int		irq;
	void __iomem	*regs;
};

static struct s_device	my_dev;

static irqreturn_t	my_handler(int irq, void *dev_id)
{
	pr_info("Interrupt occured\n");
	return IRQ_HANDLED;
}

static int __init hello_1_init(void)
{
	pr_info("hello, world 1.\n");

	int		result;

	result = request_irq(DA_KEYBOARD_IRQ,
			my_handler,
			IRQF_SHARED,
			MY_DEV_NAME,
			(void *)(&my_dev));
	if (result) {
		pr_err("Failed to reserve IRQ");
		return result;
	}
	return 0;
}

static void __exit hello_1_exit(void)
{
	free_irq(DA_KEYBOARD_IRQ, (void *)(&my_dev));
	pr_info("goodbye, world 1.\n");
}

module_init(hello_1_init);
module_exit(hello_1_exit);

MODULE_LICENSE("GPL");
