#!/usr/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install xorg openbox xauth xterm  -y

sudo apt install tightvncserver xfce4 xfce4-goodies -y

vncpasswd

sudo cp xstartup ~/.vnc/xstartup

sudo chmod +x ~/.vnc/xstartup

sudo ufw allow from any to any port 5901 proto tcp

sudo cp vncserver@.service /etc/systemd/system/vncserver@.service

sudo systemctl daemon-reload

sudo service vncserver@1 start

sudo systemctl enable vncserver@1

sudo apt install firefox -y


