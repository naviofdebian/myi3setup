#!/bin/bash

echo "Starting script..."
# Heding home
cd
mkdir i3 dump
cd i3 dump
sleep 1
# updating and basic packages
sudo apt update
sleep 1
sudo apt upgrade
sleep 1
sudo apt install pcmanfm
sudo apt install neofetch
sudo apt install git
sudo apt install cmake
sudo apt install make
sudo apt install nitrogen
sudo apt install ranger
sudo apt install neofetch
sudo apt install compton
sudo apt install feh
sudo apt install imagemagik
sudo apt install ffmpeg
echo -e ne[40mInstalling Dependencies for brave-browser...n
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
echo -e ne[40mUpdating packages...n
sudo apt update
echo -e ne[40mInstalling brave-browser...n
sudo apt install brave-browser
# installing i3 and i3-gaps
sudo apt install i3
sleep 1
echo "Adding gaps :p"
sleep 1
sudo apt install i3-gaps
#w3m
sudo apt install w3m
# Wallset
git clone https://github.com/terroo/wallset
cd wallset
sudo bash install.sh
# polybar
echo -e ne[40mInstalling polybar...n
sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xr>
git clone https://github.com/jaagr/polybar.git
cd polybar && ./build.sh
sudo apt install polybar
cd
install -Dm644 /usr/share/doc/polybar/config /home/usr/.config/polybar/config
sleep 2
echo "Themeing your system..."

# polybar-themes
echo -e ne[40mInstalling polybar-themes...n
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
cd polybar-themes
chmod +x setup.sh
echo vvvvvvvvvvvvvvvvvvvvv
echo Now choose option 1
sleep 7
./setup.sh

