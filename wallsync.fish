#!/usr/bin/env fish

set host "Put Your IP Here"
set user "xeeny"
set wall ~/.config/wallpaper

set oldwall ""

while true
  set md5wall (ssh $user@$host "md5sum $wall" | cut -d ' ' -f 1) 
  if ! [ $oldwall = $md5wall ]
    scp $user@$host:$wall $wall
    xwallpaper --zoom $wall
    set oldwall $md5wall
  end
end
