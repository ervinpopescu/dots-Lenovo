from libqtile.config import Key
from libqtile.lazy import lazy

from .settings import mod, alt, terminal, menu, update

@lazy.function
def window_to_prev_group(qtile):
    i = qtile.groups.index(qtile.current_group)
    if qtile.current_window is not None and i != 0:
        qtile.current_window.togroup(qtile.groups[i - 1].name)

@lazy.function
def window_to_next_group(qtile):
    i = qtile.groups.index(qtile.current_group)
    if qtile.current_window is not None and i != 6:
        qtile.current_window.togroup(qtile.groups[i + 1].name)

@lazy.function
def toggle_minimize_all(qtile):
    group = qtile.current_screen.group
    for win in group.windows:
        win.minimized = not win.minimized
        if win.minimized is False:
            group.layout_all()

@lazy.function
def groupbox_disable_drag(qtile):
    widget = qtile.widgets_map["groupbox"]
    if widget.disable_drag is True:
        widget.disable_drag = False
    else:
        widget.disable_drag = True

keys = [

    # Windows and groups
    Key([mod], "Up",
        lazy.group.prev_window()),
    Key([mod], "Down",
        lazy.group.next_window()),
    Key([mod], "d",
        toggle_minimize_all()),
    Key([mod], "grave",
        lazy.window.toggle_minimize()),
    Key([mod], "Left",
        lazy.screen.prev_group(skip_empty=True)),
    Key([mod], "Right",
        lazy.screen.next_group(skip_empty=True)),
    Key([mod, alt], "Left",
        window_to_prev_group()),
    Key([mod, alt], "Right",
        window_to_next_group()),

    # Layouts
    Key(
        [mod, "control"], "Right",
        lazy.layout.grow_right().when(layout=["bsp","columns"]),
        lazy.layout.grow().when(layout=["monadwide","monadtall", "monadthreecol"]),
        lazy.layout.increase_ratio().when(layout="spiral"),
    ),
    Key(
        [mod, "control"], "Left",
        lazy.layout.shrink().when(layout=["monadwide","monadtall" or "monadthreecol"]),
        lazy.layout.grow_left().when(layout=["bsp","columns"]),
        lazy.layout.decrease_ratio().when(layout="spiral"),
    ),
    Key(
        [mod, "control"], "Up",
        lazy.layout.grow().when(layout=["monadwide","monadtall","monadthreecol"]),
        lazy.layout.grow_up().when(layout=["bsp","columns"]),
    ),
    Key(
        [mod, "control"], "Down",
        lazy.layout.shrink().when(layout=["monadwide","monadtall","monadthreecol"]),
        lazy.layout.grow_down().when(layout=["bsp","columns"]),
    ),

    # Layout managing
    Key([mod], "n",
        lazy.layout.normalize(),
        lazy.layout.reset()),
    Key([mod], "Tab",
        lazy.next_layout()),
    Key([mod, "shift"], "Tab",
        lazy.prev_layout()),
    Key([mod, "shift"], "Up",
        lazy.layout.shuffle_up()),
    Key([mod, "shift"], "Left",
        lazy.layout.shuffle_left()),
    Key([mod, "shift"], "Right",
        lazy.layout.shuffle_right()),
    Key([mod, "shift"], "Down",
        lazy.layout.shuffle_down()),

    # Window managing
    Key([mod], "e",
        lazy.window.toggle_fullscreen()),
    Key([mod, "shift"], "f",
        lazy.window.toggle_floating()),
    Key([mod], "q",
        lazy.window.kill()),

    # Qtile
    Key([mod], "v",
        lazy.validate_config()),
    Key([mod], "r",
        lazy.reload_config()),
    Key([mod, "shift"], "r",
        lazy.restart()),
    Key([mod, "shift"], "q",
        lazy.shutdown()),
    Key([mod, "shift"], "a",
        lazy.hide_show_bar()),
    Key([mod,"shift"], "c",
        lazy.widget["widgetbox"].toggle()),
    Key([mod, "shift"], "m",
        lazy.spawn("/home/ervin/.local/bin/set_max_layout")),

    # Apps
    Key([mod], "Return",
        lazy.spawn(terminal)),
    Key([mod], "f",
        lazy.spawn("nemo")),
    Key([mod], "o",
        lazy.spawn("alacritty -e zsh -c lf")),
    Key([mod], "w",
        lazy.spawn("rofi -mode window -show window")),
    Key([mod], "a",
        lazy.spawn(menu)),
    Key([], "Menu",
        lazy.spawn(menu)),
    Key([mod], "x",
        lazy.spawn("nwgbar -b 1d1d2d -o 0.1")),
    Key([mod], "b",
        lazy.spawn("google-chrome-beta")),
    Key([mod], "z",
        lazy.spawn("firefox")),
    Key([mod], "t",
        lazy.group["scratchpad"].dropdown_toggle("term")),
    Key([mod], "u",
        lazy.spawn(update)),
    Key([mod], "s",
        lazy.spawn("gnome-control-center")),
    Key([mod], "k",
        lazy.spawn("/home/ervin/.local/bin/qtile_key_pdf")),
    Key([mod], "l",
        lazy.spawn("betterlockscreen -l dimblur")),
    Key([mod], "m",
        lazy.spawn("/home/ervin/.local/bin/start-spotify")),
    # Key([mod], "e",
    #     lazy.spawn("/home/ervin/.config/eww/launch_eww")),
    Key([mod], "c",
        lazy.spawn("/home/ervin/.config/conky/start_qtile.sh -n")),
    Key(["control", "shift"], "Escape",
        lazy.spawn("alacritty -e htop")),
    Key([mod], "p",
            lazy.spawn("jgmenu_run")),

    # DE keys
    Key([mod, "shift"], "s",
        lazy.spawn("flameshot screen -p /home/ervin/Pictures")),
    Key([alt, "shift"], "s",
        lazy.spawn("flameshot gui")),
    Key([], "XF86AudioMute",
        lazy.spawn("/home/ervin/.local/bin/vol_mute")),
    Key([], "XF86AudioLowerVolume",
        lazy.spawn("/home/ervin/.local/bin/vol_ctl -5%")),
    Key([], "XF86AudioRaiseVolume",
        lazy.spawn("/home/ervin/.local/bin/vol_ctl +5%")),
    Key(["shift"], "XF86AudioLowerVolume",
        lazy.spawn("/home/ervin/.local/bin/media_ctl previous")),
    Key([], "XF86AudioMicMute",
        lazy.spawn("/home/ervin/.local/bin/media_ctl play-pause")),
    Key(["shift"], "XF86AudioRaiseVolume",
        lazy.spawn("/home/ervin/.local/bin/media_ctl next")),
    Key([], "XF86MonBrightnessUp",
        lazy.spawn("/home/ervin/.local/bin/brightness_ctl up")),
    Key([], "XF86MonBrightnessDown",
        lazy.spawn("/home/ervin/.local/bin/brightness_ctl down")),
    Key([alt], "space",
        lazy.widget["keyboardlayout"].next_keyboard()),
    Key([alt], "F5",
        groupbox_disable_drag()),
]
