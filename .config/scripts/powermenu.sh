#! /bin/sh

chosen=$(printf "Lock\nSuspend\nReboot\nPower Off" | rofi -dmenu -i)

case "$chosen" in 
    "Lock") hyprlock ;;
    "Suspend") systemctl suspend-then-hibernate;;
    "Reboot") reboot ;;
    "Power Off") systemctl poweroff ;;
    *) exit 1 ;;
esac
