#include <linux/init.h>
#include <linux/interrupt.h>
#include <linux/keyboard.h>
#include <linux/module.h>
#include <linux/notifier.h>
#include <linux/printk.h>

#ifndef DA_KEYBOARD_IRQ
# define DA_KEYBOARD_IRQ 1
#endif

#ifndef MY_DEV_NAME
# define MY_DEV_NAME "shit"
#endif

//part about keyboard notifiers

static int	keyboard_event(struct notifier_block *nb, unsigned long action, void *data)
{
	struct keyboard_notifier_param	*param = data;

	if (action != KBD_KEYCODE)
		return NOTIFY_OK;

	pr_info("keycode=%u %s\n", param->value, param->down ? "pressed" : "released");
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
