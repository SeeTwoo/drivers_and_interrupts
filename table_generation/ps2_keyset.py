#!/usr/bin/env python3

# Mapping: Scancode (Set 1) -> Linux Keycode Name
# Based on standard IBM PC/AT Scancodes
std_map = {
    0x01: "KEY_ESC", 0x02: "KEY_1", 0x03: "KEY_2", 0x04: "KEY_3", 0x05: "KEY_4",
    0x06: "KEY_5", 0x07: "KEY_6", 0x08: "KEY_7", 0x09: "KEY_8", 0x0a: "KEY_9",
    0x0b: "KEY_0", 0x0c: "KEY_MINUS", 0x0d: "KEY_EQUAL", 0x0e: "KEY_BACKSPACE",
    0x0f: "KEY_TAB", 0x10: "KEY_Q", 0x11: "KEY_W", 0x12: "KEY_E", 0x13: "KEY_R",
    0x14: "KEY_T", 0x15: "KEY_Y", 0x16: "KEY_U", 0x17: "KEY_I", 0x18: "KEY_O",
    0x19: "KEY_P", 0x1a: "KEY_LEFTBRACE", 0x1b: "KEY_RIGHTBRACE", 0x1c: "KEY_ENTER",
    0x1d: "KEY_LEFTCTRL", 0x1e: "KEY_A", 0x1f: "KEY_S", 0x20: "KEY_D", 0x21: "KEY_F",
    0x22: "KEY_G", 0x23: "KEY_H", 0x24: "KEY_J", 0x25: "KEY_K", 0x26: "KEY_L",
    0x27: "KEY_SEMICOLON", 0x28: "KEY_APOSTROPHE", 0x29: "KEY_GRAVE", 0x2a: "KEY_LEFTSHIFT",
    0x2b: "KEY_BACKSLASH", 0x2c: "KEY_Z", 0x2d: "KEY_X", 0x2e: "KEY_C", 0x2f: "KEY_V",
    0x30: "KEY_B", 0x31: "KEY_N", 0x32: "KEY_M", 0x33: "KEY_COMMA", 0x34: "KEY_DOT",
    0x35: "KEY_SLASH", 0x36: "KEY_RIGHTSHIFT", 0x37: "KEY_KPASTERISK", 0x38: "KEY_LEFTALT",
    0x39: "KEY_SPACE", 0x3a: "KEY_CAPSLOCK", 0x3b: "KEY_F1", 0x3c: "KEY_F2", 0x3d: "KEY_F3",
    0x3e: "KEY_F4", 0x3f: "KEY_F5", 0x40: "KEY_F6", 0x41: "KEY_F7", 0x42: "KEY_F8",
    0x43: "KEY_F9", 0x44: "KEY_F10", 0x45: "KEY_NUMLOCK", 0x46: "KEY_SCROLLLOCK",
    0x47: "KEY_KP7", 0x48: "KEY_KP8", 0x49: "KEY_KP9", 0x4a: "KEY_KPMINUS",
    0x4b: "KEY_KP4", 0x4c: "KEY_KP5", 0x4d: "KEY_KP6", 0x4e: "KEY_KPPLUS",
    0x4f: "KEY_KP1", 0x50: "KEY_KP2", 0x51: "KEY_KP3", 0x52: "KEY_KP0",
    0x53: "KEY_KPDOT", 0x57: "KEY_F11", 0x58: "KEY_F12"
}

ext_map = {
    0x1c: "KEY_KPENTER", 0x1d: "KEY_RIGHTCTRL", 0x35: "KEY_KPSLASH", 0x38: "KEY_RIGHTALT",
    0x47: "KEY_HOME", 0x48: "KEY_UP", 0x49: "KEY_PAGEUP", 0x4b: "KEY_LEFT",
    0x4d: "KEY_RIGHT", 0x4f: "KEY_END", 0x50: "KEY_DOWN", 0x51: "KEY_PAGEDOWN",
    0x52: "KEY_INSERT", 0x53: "KEY_DELETE", 0x5b: "KEY_LEFTMETA", 0x5c: "KEY_RIGHTMETA",
    0x5d: "KEY_COMPOSE"
}

def generate_array(name, mapping):
    lines = [f"static const unsigned short {name}[256] = {{"]
    for i in range(256):
        key = mapping.get(i, "KEY_RESERVED")
        lines.append(f"    [{i}] = {key},")
    lines.append("};")
    return "\n".join(lines)

table_code = "/* AUTO-GENERATED TABLES */\n"
table_code += generate_array("ft_scancodes_std", std_map) + "\n\n"
table_code += generate_array("ft_scancodes_ext", ext_map)

# Injection Logic
filename = "ft_atkbd.c"
with open(filename, "r") as f:
    content = f.read()

import re
# Look for markers: // [MAP_START] and // [MAP_END]
pattern = r"// \[MAP_START\].*?// \[MAP_END\]"
new_content = re.sub(pattern, f"// [MAP_START]\n{table_code}\n// [MAP_END]", content, flags=re.DOTALL)

with open(filename, "w") as f:
    f.write(new_content)

print(f"Successfully injected tables into {filename}")
