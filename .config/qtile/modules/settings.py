############
# SETTINGS #
############

from libqtile import qtile
from qtile_extras.widget.decorations import RectDecoration

from .colors import *

# Keys
mod = "mod4"
alt = "mod1"
menu = "rofi -show drun -terminal alacritty -show-icons".split()
terminal = "alacritty"
update = "alacritty -e yay -Syyu --noconfirm".split()

# Groups
group_names = "coding www social etc settings media".split()
group_labels = ["", "", "", "", "", ""]
group_layouts = ["monadwide", "max", "max", "bsp", "bsp", "monadthreecol"]

# qtile.test_data = (group_layouts, qtile.current_screen.top.eval("self.cursor_info"))
qtile.test_data = group_layouts

# Widgets

# colors = nord
colors = catppuccin
# colors = random

margin_size = 7

layout_defaults = dict(
    margin=margin_size,
    border_width=5,
    border_focus=colors[15],
    border_normal=colors[0]
)

widget_defaults = dict(
    # font="CodeNewRoman Nerd Font Mono Bold",
    font="Font Awesome 6 Free Solid",
    fontsize=30,
    padding=6,
)

extension_defaults = widget_defaults.copy()

decor_bg = colors[0]

decor = {
    "decorations": [
        RectDecoration(
            colour=decor_bg , radius=10, filled=True, padding_y=0, padding_x=0
        )
    ],
}
