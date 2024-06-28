if type "xrandr"; then
	if [[ "$(xrandr --query | grep " connected" | cut -d "+" -f2 | uniq -c | cut -d " " -f7)" != "2" ]]; then
		for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
			MONITOR=$m polybar --reload 4bn4v 
		done
	else
		MONITOR=DP-2 polybar --reload 4bn4v
	fi
else
	polybar --reload 4bn4v &
fi
