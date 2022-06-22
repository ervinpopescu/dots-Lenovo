#!/bin/python

from xdo import Xdo
from libqtile.command.client import InteractiveCommandClient
from time import sleep

c = InteractiveCommandClient()

while True:
    xdo = Xdo()
    xm = xdo.get_mouse_location().x
    ym = xdo.get_mouse_location().y
    visible = c.screen.bar["top"].info()["size"]
    if visible == 26:
        visible = True
    elif visible == 0:
        visible = False
    # print(xm,ym,visible)
    if ym == 0 and xm == 0:
        c.hide_show_bar()
        xdo.move_mouse(2880 // 2, 30)
    sleep(0.05)
