#! /bin/bash
sudo raspi-config nonint do_boot_behaviour B2
sudo apt-get update -qq
sudo apt-get install -y --no-install-recommends xserver-xorg-video-all xserver-xorg-input-all xserver-xorg-core xinit x11-xserver-utils chromium-browser unclutter
