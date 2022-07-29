import subprocess
import requests
# from libqtile import qtile
# from libqtile.log_utils import logger
from libqtile.lazy import lazy
from qtile_extras.popup.toolkit import PopupAbsoluteLayout, PopupText
from .settings import margin_size

def location():
    try:
        ip = requests.get("http://ip-api.com/json")
        return ip.json()["regionName"] + "," + ip.json()["country"]
    except Exception:
        return "Bucharest,RO"

@lazy.function
def weather_popup(qtile):
    wtr = subprocess.check_output(
        ["/home/ervin/.local/bin/wttr", location(), "?m0TQ"],
    )
    controls = [
        PopupText(
            font="CodeNewRoman Nerd Font Mono",
            pos_x=10,
            pos_y=10,
            fontsize=30,
            foreground="000000",
            text=wtr.decode("utf-8"),
            width=600,
            height=300,
        )
    ]
    layout = PopupAbsoluteLayout(
        qtile,
        width=600,
        height=300,
        controls=controls,
        opacity=0.96,
        background=qtile.widgets_map["myweather"].foreground,
        initial_focus=None,
    )
    layout.show(
        x=2880 - layout.width - margin_size,  # type: ignore
        y=qtile.current_screen.top.info()["size"] + margin_size,
        warp_pointer=True,
    )

def no_text(text):
    return ""
