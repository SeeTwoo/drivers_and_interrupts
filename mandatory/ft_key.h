#ifndef FT_KEY_H
#define FT_KEY_H

#include <linux/types.h>

struct s_key {
	u64	keycode;
	char	*name;
	char	ascii;
};

#endif
