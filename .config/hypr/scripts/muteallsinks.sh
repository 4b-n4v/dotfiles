for SINK in $(pactl list short sinks | awk '{print $1}'); do pactl set-sink-mute $SINK 1; done
