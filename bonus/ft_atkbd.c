#include <linux/init.h>
#include <linux/input.h>
#include <linux/interrupt.h>
#include <linux/module.h>
#include <linux/printk.h>
#include <linux/serio.h>

static irqreturn_t  interrupt(struct serio *serio, u8 data, u32 flags)
{

}

static int  ft_connect(struct serio *serio, struct serio_driver *drv)
{

}

static void ft_disconnect(struct serio *serio)
{

}

static const struct serio_device_id ft_ids[] = {
	{
		.type = SERIO_8042,
		.extra = SERIO_ANY,
		.id = SERIO_ANY,
		.proto = SERIO_ANY,
	},
	{0},
};

static struct serio_driver  ft_atkbd_drv = {
	.description	= "a bad replacement to atkbd",
	.id_table	= ft_ids,
	.interrupt	= ft_interrupt,
	.connect	= ft_connect,
	.disconnect	= ft_disconnect,
	.driver		= {
		.name	= "ft_atkbd",
	},
};

static int  __init ft_atkbd_init(void)
{
	return serio_register_driver(&ft_atkbd_drv);
}

static void __exit ft_atkbd_exit(void)
{
	serio_unregister_driver(&ft_atkbd_drv);
}

late_initcall(ft_atkbd_init);
module_exit(ft_atkbd_exit);

MODULE_LICENSE("GPL");
