#!/bin/bash

if type "xrandr"; then
    # Get the names of the connected monitors
    connected_monitors=$(xrandr --query | grep " connected" | cut -d" " -f1)
    # Check if monitors are mirrored
    first_monitor=$(echo "$connected_monitors" | head -n 1)
    mirrored=true
    for monitor in $connected_monitors; do
        if [ "$monitor" != "$first_monitor" ]; then
            # Compare the resolutions and positions
            first_monitor_mode=$(xrandr --query | grep -A1 "^$first_monitor" | tail -n 1)
            monitor_mode=$(xrandr --query | grep -A1 "^$monitor" | tail -n 1)
            if [ "$first_monitor_mode" != "$monitor_mode" ]; then
                mirrored=false
                break
            fi
        fi
    done

    if $mirrored; then
        MONITOR=$first_monitor polybar --reload 4bn4v &
    else
        for m in $connected_monitors; do
            MONITOR=$m polybar --reload 4bn4v &
        done
    fi
else
    polybar --reload 4bn4v &
fi
