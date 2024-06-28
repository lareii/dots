WINDOW=$(hyprctl clients | grep "class: " | awk '{gsub("class: ", "");print}' | xargs | tr " " "\n" | wofi --show dmenu)
if [ "$WINDOW" = "" ]; then
    exit
fi
hyprctl dispatch focuswindow $WINDOW
hyprctl dispatch bringactivetotop $WINDOW