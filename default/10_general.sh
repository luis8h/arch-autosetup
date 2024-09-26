#!/bin/bash

# set capslock to escape in gnome
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape_shifted_capslock']"

# disable mouse acceleration
gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'flat'

# compose key to right alt for german umlaute
setxkbmap -option compose:ralt
