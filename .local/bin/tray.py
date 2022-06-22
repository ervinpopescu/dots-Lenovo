#!/usr/bin/python
import os
import gi
gi.require_version('Gtk', '3.0')
gi.require_version('AppIndicator3', '0.1')
from gi.repository import Gtk as gtk, AppIndicator3 as appindicator  # type: ignore

def main():
    indicator = appindicator.Indicator.new("customtray", "semi-starred-symbolic", appindicator.IndicatorCategory.APPLICATION_STATUS)
    indicator.set_status(appindicator.IndicatorStatus.ACTIVE)
    indicator.set_menu(menu())
    gtk.main()


def menu():
    menu = gtk.Menu()

    command_one = gtk.MenuItem(label='My Notes')  # type: ignore
    menu.append(command_one)  # type: ignore
    command_one.connect("activate", note)  # type: ignore

    exittray = gtk.MenuItem(label='Exit Tray')  # type: ignore
    menu.append(exittray)  # type: ignore
    exittray.connect('activate', quit, "quit")  # type: ignore

    menu.show_all()  # type: ignore
    return menu


def note():
    os.system("subl $HOME/Documents/notes.txt")


def quit():
    gtk.main_quit()

if __name__ == "__main__":
  main()
