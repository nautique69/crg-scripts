#! /bin/bash
sudo raspi-config nonint do_boot_behaviour B4
sudo raspi-config nonint do_wayland W1

sudo apt-get update
sudo apt-get install -y libgtk-3-dev python3-pip python3-venv pipx

pipx install jamstats

pipx ensurepath

cat > run-jamstats.sh <<EOF
#!/bin/bash
sleep 20
readsonly IP=\$(hostname -I)
jamstats --scoreboardserver scoreboard.local:80 --mode-web --jamstatsip=\$IP --jamstatsport=8080
EOF
chmod +x ./run-jamstats.sh

mkdir -p /home/pi/.config/lxsession/LXDE-pi/
echo "/home/pi/run-jamstats.sh" >> /home/pi/.config/lxsession/LXDE-pi/autostart

sudo reboot