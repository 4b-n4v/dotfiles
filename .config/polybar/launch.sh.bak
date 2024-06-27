if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		MONITOR=$m polybar --reload 4bn4v 
	done
else
	polybar --reload 4bn4v &
fi
