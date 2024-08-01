#!/usr/bin/env bash
# Courtesy of: u/AskarBink
# https://www.reddit.com/r/hyprland/comments/13ivh0c/what_tool_do_you_recommend_to_take_screenshot_in/
# Flags:

# r: region
# s: screen
#
# c: clipboard
# f: file
# i: interactive

# p: pixel

if [[ $1 == rc ]]; then
    grim -g "$(slurp -b '#000000b0' -c '#00000000')" - | wl-copy
    notify-send 'Copied to Clipboard' Screenshot

elif [[ $1 == rf ]]; then
    mkdir -p ~/Pictures/screenshots
    filename=~/Pictures/screenshots/selected/$(date +'%Y%m%d-%H%M%SZ')-screenshot-selected.png
    grim -g "$(slurp -b '#000000b0' -c '#00000000')" $filename
    notify-send 'Screenshot Taken' $filename

elif [[ $1 == ri ]]; then
    grim -g "$(slurp -b '#000000b0' -c '#00000000')" - | swappy -f -

elif [[ $1 == sc ]]; then
    filename=~/Pictures/screenshots/all/$(date +'%Y%m%d-%H%M%SZ')-screenshot-all.png
    grim - | wl-copy
    notify-send 'Copied to Clipboard' Screenshot

elif [[ $1 == sf ]]; then
    mkdir -p ~/Pictures/screenshots
    filename=~/Pictures/screenshots/all/$(date +'%Y%m%d-%H%M%SZ')-screenshot-all.png
    grim $filename
    notify-send 'Screenshot Taken' $filename

elif [[ $1 == si ]]; then
    grim - | swappy -f -

elif [[ $1 == p ]]; then
    color=$(hyprpicker -a)
    wl-copy $color
    notify-send 'Copied to Clipboard' $color
fi
