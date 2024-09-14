#!/bin/bash

if [ "$1" == "-d" ] || [ "$1" == "--default" ]; then
    echo "$HOME/.config/waybar/images/os/tux-logo.svg"
else
    logo=$(cat /etc/os-release | grep "LOGO=" -m1 | cut -d'=' -f2)
    echo "$HOME/.config/waybar/images/os/$logo.svg"
fi
