from libqtile.config import DropDown, Group, ScratchPad, Key
from libqtile.lazy import lazy
from libqtile.log_utils import logger
from libqtile import qtile

from .settings import (
        group_names,
        group_layouts,
        group_labels,
        mod,
        terminal,
        update
        )
from .keys import keys

groups = []

for i in range(len(group_names)):
    groups.append(
        Group(name=group_names[i],
              layout=group_layouts[i],
              label=group_labels[i],
              layout_opts=None))

# logger.info("%s" % qtile.groups_map["media"].layout)

groups.append(
    ScratchPad(
        "scratchpad",
        [
            DropDown("term", terminal, opacity=0.9,  # type: ignore
                  width=0.8, height=0.5, x=0.1, y=0.25),  # type: ignore
            DropDown("up", update, opacity=0.9,  # type: ignore
                  width=0.8, height=0.5, x=0.1, y=0.25)  # type: ignore
            ],
    )
)

for i, name in enumerate(group_names, 1):
    keys.extend(
        [
            Key([mod], str(i), lazy.group[name].toscreen(toggle=True)),
            Key([mod, "shift"], str(i), lazy.window.togroup(name)),
        ]
    )
