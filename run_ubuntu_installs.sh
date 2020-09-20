

sudo apt update && sudo apt upgrade -y

adduser paul
usermod -aG sudo paul

sudo apt install ubuntu-gnome-desktop

sudo apt install tigervnc-standalone-server tigervnc-common tigervnc-xorg-extension tigervnc-viewer -y

vncserver

vncserver -kill :1

nano ~/.vnc/xstartup

#!/bin/sh
exec /etc/vnc/xstartup
xrdb $HOME/.Xresources
vncconfig -iconic &
dbus-launch --exit-with-session gnome-session &


sudo apt-get install xorg openbox xauth xterm -y
