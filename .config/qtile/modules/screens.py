from libqtile import bar
# from libqtile import hook
from libqtile.config import Screen

from .widgets import (
    top_widgets,
    left_widgets,
)
from .settings import colors
from .settings import margin_size as ms

def statusbar(widgets, margin):
    return bar.Bar(
        widgets,
        52,
        margin=margin,
        background="00000000",
        border_color=colors[1],
        border_width=0,
    )

widgets1 = top_widgets()
widgets2 = left_widgets()

top_bar_1 = statusbar(widgets1, [ms, ms, 0, ms])
top_bar_2 = statusbar(widgets2, [ms, ms, 0, ms])

# @hook.subscribe.startup
# def _():
#     top_bar_1.window.set_property("QTILE_BAR", 1)
#     top_bar_2.window.set_property("QTILE_BAR", 1)

screens = [
    Screen(top=top_bar_1),
    Screen(top=top_bar_2),
]
