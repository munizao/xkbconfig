#!/bin/bash
cp base.xml /usr/share/X11/xkb/rules/base.xml
cp evdev.xml /usr/share/X11/xkb/rules/evdev.xml
cp us /usr/share/X11/xkb/symbols/us
rm /var/lib/xkb/*.xkm
setxkbmap -layout us -variant math -print | xkbcomp - $DISPLAY
