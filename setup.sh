#!/bin/bash

echo "Konffaat livelinuxiasi kinuskilla"

echo "Asennetaan Salt ja Git"
sudo apt-get update
sudo apt-get -y install git salt-minion

echo "Muutetaan asetuksia ja haetaan salt-tilat"
echo 'master: localhost'|sudo tee /etc/salt/minion
git clone https://github.com/Miyune/kinuski.git
cd kinuski/
bash highstate.sh

echo "Nappaimisto ja aika-asetus vaihdettu FI"
setxkbmap fi
sudo timedatectl set-timezone Europe/Helsinki
git config --global credential.helper "cache --timeout=3600"
git config --global push.default simple
