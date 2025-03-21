#! /bin/bash

sudo raspi-config nonint do_boot_behaviour B2 # boot to console and log in

sudo apt-get update -qq

sudo apt-get install --no-install-recommends xserver-xorg-video-all xserver-xorg-input-all xserver-xorg-core xinit x11-xserver-utils chromium-browser unclutter

# update bash profile
# cat << EOF >> .profile
# if [ -z $DISPLAY ] && [ $(tty) = /dev/tty1 ]
# then
#   startx
# fi
# EOF

# cat > .xinitrc <<EOF
# #!/bin/bash
# xset -dpms
# xset s off
# xset s noblank

# unclutter &
# chromium-browser http://scoreboard.local/views/wb/? \
#   --window-size=1920,1080 \
#   --window-position=0,0 \
#   --start-fullscreen \
#   --kiosk \
#   --incognito \
#   --noerrdialogs \
#   --disable-translate \
#   --no-first-run \
#   --fast \
#   --fast-start \
#   --disable-infobars \
#   --disable-features=TranslateUI \
#   --disk-cache-dir=/dev/null \
#   --overscroll-history-navigation=0 \
#   --disable-pinch
# EOF
# # chmod +x ./xinitrc

# sed -i 's/want_memcheck=1/want_memcheck=0/' /usr/bin/chromium # no memory warning

# sudo reboot
