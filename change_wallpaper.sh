#!/bin/bash

folder="$HOME/Pictures/wallpapers"
curr_pic=$(basename $(gsettings get org.gnome.desktop.background picture-uri-dark) | sed 's/.$//')
pic=$(ls "$folder"/* | grep -v $curr_pic | shuf -n1)

# picture options:
# 'none', 'wallpaper', 'centered', 'scaled', 'stretched', 'zoom', 'spanned'.
gsettings set org.gnome.desktop.background picture-options 'scaled'
gsettings set org.gnome.desktop.background picture-uri-dark "file://$pic"
