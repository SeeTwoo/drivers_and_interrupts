import subprocess
import re

# Mapping of dumpkeys symbolic names to ASCII characters
# dumpkeys often uses names like "one" instead of "1"
NAME_TO_ASCII = {
    "Escape": r"\033",
    "BackSpace": r"\b",
    "Tab": r"\t",
    "Return": r"\r",
    "Linefeed": r"\n",
    "space": " ",
    "Delete": r"\177",
    "one": "1", "two": "2", "three": "3", "four": "4", "five": "5",
    "six": "6", "seven": "7", "eight": "8", "nine": "9", "zero": "0",
    "comma": ",", "period": ".", "minus": "-", "equal": "=",
    "bracketleft": "[", "bracketright": "]", "semicolon": ";",
    "apostrophe": r"\'",
    "grave": "`",
    "backslash": r"\\",
    "slash": "/",
    "asterisk": "*",
    "plus": "+",
    "minus": "-",
}

def format_ascii(name):
    """Returns the C character literal for a given key name."""
    # 1. Check the manual mapping
    if name in NAME_TO_ASCII:
        char = NAME_TO_ASCII[name]
        return f"'{char}'"
    
    # 2. If it's a single character (e.g., 'a', 'z')
    if len(name) == 1:
        if name == "'": return r"'\''"
        if name == "\\": return r"'\\'"
        return f"'{name}'"
    
    # 3. Handle 'plus_a' style names
    if name.startswith("plus_") and len(name) == 6:
        char = name[-1]
        if char == "'": return r"'\''"
        return f"'{char}'"

    # 4. Fallback: null byte
    return r"'\0'"

def generate_c_array():
    try:
        raw_output = subprocess.check_output(["dumpkeys"], text=True)
    except FileNotFoundError:
        return "Error: 'dumpkeys' command not found. Are you on Linux console?"

    # Regex to capture: keycode <num> = <symbol>
    pattern = re.compile(r"^keycode\s+(\d+)\s+=\s+([^\s]+)", re.MULTILINE)
    
    print("struct s_key keys[] = {")
    
    for match in pattern.finditer(raw_output):
        keycode = match.group(1)
        name = match.group(2)
        ascii_char = format_ascii(name)
        
        # Format: {keycode, "name", 'ascii'}
        # Using a raw string for name to prevent escape issues in the C string literal
        print(f'\t{{{keycode}, "{name}", {ascii_char}}},')
        
    print("};")

if __name__ == "__main__":
    generate_c_array()
