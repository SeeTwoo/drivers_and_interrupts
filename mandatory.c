#include <linux/init.h>
#include <linux/interrupt.h>
#include <linux/keyboard.h>
#include <linux/module.h>
#include <linux/notifier.h>
#include <linux/printk.h>

static const char	keycodes[256] = {
	[0 ... 18] = '\0',
	[19] = 'p',
	[20] = 'y',
	[21] = 'f',
	[22] = 'g',
	[23] = 'c',
	[24] = 'r',
	[25] = 'l',
	[26] = '/',
	[27 ... 255] = '\0',
};

static int	keyboard_event(struct notifier_block *nb, unsigned long action, void *data)
{
	struct keyboard_notifier_param	*param = data;
	char				c = keycodes[param->value];

	if (action != KBD_KEYCODE)
		return NOTIFY_OK;

	if (c)
		pr_info("keycode=%c %s\n", c, param->down ? "pressed" : "released");
	else
		pr_info("unknown keycode %s\n", param->down ? "pressed" : "released");
	return NOTIFY_OK;
}

static struct notifier_block	keyboard_nb = {
	.notifier_call = keyboard_event,
};

static int __init hello_1_init(void)
{
	pr_info("hello, world 1.\n");
	register_keyboard_notifier(&keyboard_nb);
	return 0;
}

static void __exit hello_1_exit(void)
{
	unregister_keyboard_notifier(&keyboard_nb);
	pr_info("goodbye, world 1.\n");
}

module_init(hello_1_init);
module_exit(hello_1_exit);

MODULE_LICENSE("GPL");
