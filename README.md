# wallsync
sync your wall paper over ssh

# dependence
- fish
- open-ssh
- gnu-utils (md5sum, cut, test, mkdir, cat, find, shuf)
- xwallpaper

# how to use this
First you nead a srever where you have wallpapers (default in ~/.config/wallpapers/).
Then on sterver you need start `wallchange.fish` (changes wallpaper every 10 minuts).
Then on other computer you need to start `wallsync.fish` (this computer must be in same network otherwise otherwise it won't work)


