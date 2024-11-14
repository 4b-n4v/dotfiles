#!/usr/bin/env sh
GAPSOUT=$(hyprctl getoption general:gaps_out | awk 'NR==1{print $4}')
if [ "$GAPSOUT" = 9 ] ; then
    hyprctl --batch "\
        keyword general:gaps_out 24
        keyworld general:gaps_in 4"
    exit
elif [ "$GAPSOUT" = 24 ] ; then
    hyprctl --batch "\
        keyword general:gaps_out 40
        keyworld general:gaps_in 4"
    exit
else
    hyprctl --batch "\
        keyword general:gaps_out 9\
        keyworld general:gaps_in 5"
    exit
fi
hyprctl reload
