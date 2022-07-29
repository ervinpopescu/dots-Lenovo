import sys
import subprocess
import importlib
from os import path

from libqtile import hook

from modules.keys import keys
from modules.groups import groups
from modules.layouts import layouts, floating_layout
from modules.mouse import mouse
from modules.settings import widget_defaults, extension_defaults
from modules.screens import screens
import modules.hooks

# Config imports
def reload(module):  # noqa
    if module in sys.modules:
        importlib.reload(sys.modules[module])

reload("hooks")

assert keys
assert groups
assert layouts
assert floating_layout
assert mouse
assert widget_defaults
assert extension_defaults
assert screens
assert modules.hooks

follow_mouse_focus = True
bring_front_click = True
cursor_warp = True
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
auto_minimize = True
wl_input_rules = None
wmname = "LG3D"
