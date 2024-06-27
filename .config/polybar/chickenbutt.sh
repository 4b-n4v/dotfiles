if type "xrandr"; then
	echo 1
	if [[ "$(xrandr --query | grep " connected" | cut -d "+" -f2 | uniq -c | cut -d " " -f7)" != "2" ]]; then
		echo 2
		for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
			echo 3
		done
	else
		echo 5
	fi
	echo 6
else
	echo 7
fi
