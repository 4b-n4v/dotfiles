#!/usr/bin/env sh
GAPSOUT=$(hyprctl getoption general:gaps_out | awk 'NR==1{print $4}')
if [ "$GAPSOUT" = 40 ] ; then
    hyprctl --batch "\
        keyword general:gaps_out 24"
    exit
elif [ "$GAPSOUT" = 24 ] ; then
    hyprctl --batch "\
        keyword general:gaps_out 9\
        keyworld general_gapsout 5"
    exit
else
    hyprctl --batch "\
        keyword general:gaps_out 40"
    exit
fi
hyprctl reload
