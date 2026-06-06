#ifndef FT_KEY_H
#define FT_KEY_H

#include <linux/types.h>
#include <linux/time.h>

struct s_key {
	u64	keycode;
	char	*name;
	char	ascii;
};

struct s_keystroke {
	struct list_head	list;
	struct s_key		key;
	struct tm		tm;
};

#endif
