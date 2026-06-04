#include <linux/init.h>
#include <linux/interrupt.h>
#include <linux/keyboard.h>
#include <linux/module.h>
#include <linux/notifier.h>
#include <linux/printk.h>
#include <linux/kenel.h>

struct s_key {
	uint64_t	keycode;
	char		*name;
	char		ascii;
};

static const char	keys[] = {
	{0, "nothing", 0}
	{1, "Escape", 27},
	{2, "one", '1'},
	{3, "two", '2'},
	{4, "three", '3'},
	{5, "four", '4'},
	{6, "five", '5'},
	{7, "six", '6'},
	{8, "seven", '7'},
	{9, "eight", '8'},
	{10, "nine", '9'},
	{11, "zero", '0'},
	{12, "bracket left", '['},
	{13, "bracket right", ']'},
	{14, "delete", 127},
	{15, "tab", '\t'},
	{16, "apostrophe", '\''},
	{17, "comma", ','},
	{18, "period", '.'},
	{19, "P", 'p'},
	{20, "Y", 'y'},
	{21, "F", 'f'},
	{22, "G", 'g'},
	{23, "C", 'c'},
	{24, "R", 'r'},
	{25, "L", 'l'},
	{26, "slash", '/'},
	{27, "equal", '='},
	{28, "return", '\r'},
	{29, "control", 0},
	{30, "A", 'a'},
	{31, "O", 'o'},
	{32, "E", 'e'},
	{33, "U", 'u'},
	{34, "I", 'i'},
	{35, "D", 'd'},
	{36, "H", 'h'},
	{37, "T", 't'},
	{38, "N", 'n'},
	{39, "S", 's'},
	{40, "minus", '-'},
	{41, "grave", 0},
	{42, "shift", 0},
	{43, "backslash", '\\'},
	{44, "semicolon", '-'},
	{45, "Q", 'q'},
	{46, "J", 'j'},
	{47, "K", 'k'},
	{48, "X", 'x'},
	{49, "B", 'b'},
	{50, "M", 'm'},
	{51, "W", 'w'},
	{52, "V", 'v'},
	{53, "Z", 'z'},
	{54, "shift", 0},
	{55, "kp multiply", '*'},
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
