from libqtile.config import Click, Drag
from libqtile.lazy import lazy

from .settings import mod

mouse = [
    Drag(
        [mod],
        "Button1",
        lazy.window.set_position_floating(),
        start=lazy.window.get_position(),
    ),
    Drag(
        [mod],
        "Button3",
        lazy.window.set_size_floating(),
        start=lazy.window.get_size()
    ),
    Click(
        [mod],
        "Button2",
        lazy.window.bring_to_front()),
    Click(
        [mod],
        "Button5",
        lazy.layout.grow_right().when(layout=["bsp","columns"]),
        lazy.layout.grow().when(layout=["monadwide","monadtall","monadthreecol"]),
        lazy.layout.increase_ratio().when(layout="spiral"),
        ),
    Click(
        [mod],
        "Button4",
        lazy.layout.grow_left().when(layout=["bsp","columns"]),
        lazy.layout.shrink().when(layout=["monadwide","monadtall","monadthreecol"]),
        lazy.layout.decrease_ratio().when(layout="spiral"),
        ),
]
