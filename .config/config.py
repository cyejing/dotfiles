import re
from xkeysnail.transform import *

define_modmap({
    Key.CAPSLOCK: Key.LEFT_CTRL,
    Key.LEFT_META: Key.LEFT_ALT,
    Key.LEFT_ALT: Key.RIGHT_CTRL,
    Key.RIGHT_ALT: Key.LEFT_META,
    # Key.LEFT_CTRL: Key.RIGHT_CTRL,
})

define_keymap(lambda wm_class: wm_class not in ("All"), {
    K("RC-TAB"): K("LSuper-TAB"),
}, "All keys")

define_keymap(re.compile("terminal"), {
    # Ctrl+Alt+j/k to switch next/previous tab
    K("LC-TAB"): K("LC-Shift-l"),
    K("LC-Shift-TAB"): K("LC-Shift-h"),
    K("RC-C"): K("LC-Shift-c"),
    K("RC-V"): K("LC-Shift-v"),
    K("RC-W"): K("LC-Shift-w"),
    K("RC-T"): K("LC-Shift-t"),
}, "gnome-terminal-server")

# Keybindings for Firefox/Chrome
define_keymap(re.compile("Firefox|Google-chrome"),{
    K("LM-BACKSPACE"): K("LC-BACKSPACE"),
    K("RC-LEFT_BRACE"): K("LM-LEFT"),
    K("RC-RIGHT_BRACE"): K("LM-RIGHT"),
    K("RC-LM-i"): K("LC-Shift-i")
},"Firefox and Chrome")
