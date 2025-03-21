#! /bin/bash

sudo raspi-config nonint do_boot_behaviour B2 # boot to console and log in

sudo apt-get update -qq

sudo apt-get install --no-install-recommends xserver-xorg-video-all xserver-xorg-input-all xserver-xorg-core xinit x11-xserver-utils chromium-browser unclutter
