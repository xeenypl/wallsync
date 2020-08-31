#!/usr/bin/env fish

set wallfolder ~/.config/wallpapers/
set wall       ~/.config/wallpaper

while true 
    cp (find $wallfolder -type f | shuf -n 1) $wall
    xwallpaper --zoom $wall
    sleep 600
end
