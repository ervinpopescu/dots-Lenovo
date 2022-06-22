import asyncio
import psutil
from .matches import d
from libqtile import hook

@hook.subscribe.client_new
def assign_app_group(client):
    try:
        wm_class = client.window.get_wm_class()[0]
    except Exception:
        wm_class = None
    for i in range(len(d)):
        if wm_class in list(d.values())[i]:
            group = list(d.keys())[i]
            client.togroup(group, toggle=False)
            client.group.cmd_toscreen(toggle=False)

@hook.subscribe.client_new
async def move_client(client):
    await asyncio.sleep(0.1)
    if client.window.get_wm_class()[0] == "spotify":
        client.togroup("media")

# noswallow = [
#     "qutebrowser",
#     "Navigator",
#     "vlc",
# ]

# @hook.subscribe.client_new
# def _swallow(window):
#     if window.qtile.group.current_layout is not "max":
#         try:
#             wm_class = window.window.get_wm_class()[0]
#         except Exception:
#             wm_class = None
#         if wm_class not in noswallow:
#             pid = window.window.get_net_wm_pid()
#             ppid = psutil.Process(pid).ppid()
#             cpids = {
#                 c.window.get_net_wm_pid(): wid
#                 for wid, c in window.qtile.windows_map.items()
#             }
#             for i in range(5):
#                 if not ppid:
#                     return
#                 if ppid in cpids:
#                     parent = window.qtile.windows_map.get(cpids[ppid])
#                     parent.minimized = True
#                     window.parent = parent
#                     return
#                 ppid = psutil.Process(ppid).ppid()

# @hook.subscribe.client_killed
# def _unswallow(window):
#     if hasattr(window, "parent"):
#         window.parent.minimized = False
