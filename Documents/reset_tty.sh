#!/bin/bash

# Subfunction to restart a given tty :^D
restart_tty() {
    local tty_number=$1
    sudo systemctl restart getty@tty$tty_number.service
    if [ $? -ne 0 ]; then
        echo "tty $tty_number failed restart"
    else
        echo "tty $tty_number restarted successfully"
    fi
}

# Restart a single selected tty
restart_single() {
    read -p "Enter the tty number to restart (1-12): " tty_number
    if [[ $tty_number =~ ^[1-9]$|^1[0-2]$ ]]; then
        restart_tty $tty_number
    else
        echo "Invalid tty number. Please enter a number between 1 and 12."
    fi
}

# Restart a selected range of ttys
restart_range() {
    read -p "Enter the starting range (1-12): " start_range
    read -p "Enter the ending range (1-12): " end_range
    if [[ $start_range =~ ^[1-9]$|^1[0-2]$ ]] && [[ $end_range =~ ^[1-9]$|^1[0-2]$ ]] && [ $start_range -le $end_range ]; then
        for (( tty_number=$start_range; tty_number<=$end_range; tty_number++ )); do
            restart_tty $tty_number
        done
    else
        echo "Invalid range. Please enter numbers between 1 and 12, with the starting range less than or equal to the ending range."
    fi
}

# Restart all ttys
restart_all() {
    for tty_number in {1..12}; do
        restart_tty $tty_number
    done
}

# Prompt for options
echo "Choose an option to restart TTYs:"
echo "1) Single"
echo "2) Range"
echo "3) All"
read -p "Enter your choice (1-3): " choice

# hallelujah
case $choice in
    1)
        restart_single
        ;;
    2)
        restart_range
        ;;
    3)
        restart_all
        ;;
    *)
        echo "Invalid choice. Please enter 1, 2, or 3."
        ;;
esac
