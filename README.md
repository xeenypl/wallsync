# wallsync
sync your wall paper over ssh

# dependence
- fish
- open-ssh
- gnu-utils (md5sum, cut, test, mkdir, cat, find, shuf)
- xwallpaper

# how to use this
- On srever where you have wallpapers (default in ~/.config/wallpapers/) start `wallchange.fish` (changes wallpaper every 10 minuts).
- On srever start `sshd`
- On other computer run `rempass.fish <IP of srever>` to make sure you don't need password to login on your server.
- And start `wallsync.fish` (this computer must be in same network otherwise otherwise it won't work)


