#!/bin/bash

echo "Starting V2RayA VPN installation..."

yay -S --noconfirm --needed iptables

wget https://github.com/XTLS/Xray-core/releases/download/v25.8.3/Xray-linux-64.zip

sudo unzip Xray-linux-64.zip -d /usr/local/bin

rm Xray-linux-64.zip

sudo cp /usr/local/bin/geoip.dat /root/.local/share/xray
sudo cp /usr/local/bin/geosite.dat /root/.local/share/xray

wget https://github.com/v2rayA/v2rayA/releases/download/v2.2.7.1/installer_archlinux_x64_2.2.7.1.pkg.tar.zst

sudo pacman -U --noconfirm installer_archlinux_x64_2.2.7.1.pkg.tar.zst

rm installer_archlinux_x64_2.2.7.1.pkg.tar.zst

sudo systemctl start v2raya

sudo systemctl enable v2raya

# open web interface to finish setup
# xdg-open http://127.0.0.1:2017
# xdg-open https://www.astrill.com/what-is-my-ip