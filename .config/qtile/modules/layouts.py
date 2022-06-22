from libqtile import layout
from libqtile.config import Match
from .settings import layout_defaults

layouts = [
    layout.Bsp(  # type: ignore
        **layout_defaults
    ),
    layout.Max(  # type: ignore
        margin=layout_defaults["margin"]
    ),
    layout.MonadTall(  # type: ignore
        max_ratio=0.95,
        min_ratio=0.01,
        **layout_defaults,
    ),
    layout.MonadWide(  # type: ignore
        max_ratio=0.95,
        min_ratio=0.01,
        **layout_defaults,
    ),
    layout.MonadThreeCol(  # type: ignore
        margin=layout_defaults["margin"],
        border_width=0,
        ratio=0.33333,
        max_ratio=0.95,
        min_ratio=0.01
    ),
    layout.Spiral(  # type: ignore
        new_client_position="bottom",
        **layout_defaults,
    ),
    layout.Columns(  # type: ignore
        margin=3,
        border_width=0,
        num_columns=3),
]

floating_layout = layout.Floating(  # type: ignore
    float_rules=[
        *layout.Floating.default_float_rules,  # type: ignore
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="lightdm-settings"),
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ],
    border_width=layout_defaults["border_width"],
    border_focus=layout_defaults["border_focus"],
    border_normal=layout_defaults["border_normal"],
)
