nChain -l Snowy-Umbrella default
pkill -f waybar
waybar &
swww img $HOME/Pictures/Wallpapers/currentWallpaper-1 --transition-type wipe --transition-fps 60 
swww img -o HDMI-A-1 $HOME/Pictures/Wallpapers/currentWallpaper-2 --transition-type wipe --transition-fps 60 
$HOME/.config/nChain/scripts/gsettings.sh &
killall .dunst-wrapped
kill -SIGUSR1 $(pidof kitty)
