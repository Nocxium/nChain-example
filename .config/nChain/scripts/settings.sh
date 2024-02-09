#!/usr/bin/env bash
launcher="rofi -dmenu -i -p 'Select theme:' -theme '$HOME/.config/rofi/launchers/type-7/style-1'"

folders_to_skip=(
  # "folder_one"
  # "folder_two"
  "*LEFT"
  "*ALT"
  "unfinished"
)

pre_commands=(
  # "echo 'This is running before the change'"
)

post_commands=(
  "nChain -l Rainy-forest default"
  "pkill -f waybar"
  "waybar &"
  "swww img $HOME/Pictures/Wallpapers/currentWallpaper-1 --transition-type wipe --transition-fps 60"
  "swww img -o HDMI-A-1 $HOME/Pictures/Wallpapers/currentWallpaper-2 --transition-type wipe --transition-fps 60"
  "touch $HOME/.config/hypr/theme.conf"
  "$HOME/.config/nChain/scripts/gsettings.sh &"
  "killall .dunst-wrapped"
  "kill -SIGUSR1 $(pidof kitty)"
  "$HOME/.config/nChain/scripts/notify-send.sh &"
)

# Define categories and subcategories
declare -A categories
categories=(
  ["Nature"]="Leaf-seasons Rainy-Forest Winter-green Trippy-Mountain"
  ["Minimalistic"]="Cat-ppuccin"
)
