# Reload .Xresources
xrdb -merge ~/.Xresources

# Set desktop bg
/usr/bin/feh --bg-scale $HOME/Pictures/bg.jpg

# Update lockscreen bg
betterlockscreen -u $HOME/Pictures/bg.jpg

# Start i3
exec i3
