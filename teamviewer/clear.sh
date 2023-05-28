#!/bin/bash

sudo apt remove teamviewer
sudo rm -f /etc/apt/sources.list.d/teamviewer.list
sudo rm -rf /etc/teamviewer/
sudo rm -rf /opt/teamviewer/
sudo rm -f /usr/bin/teamviewer
sudo rm -rf /var/log/teamviewer15/
sudo rm -f /usr/share/applications/*teamviewer*
sudo rm -f /usr/share/dbus-1/services/*teamviewer*
sudo rm -f /usr/share/dbus-1/system.d/*teamviewer*
sudo rm -f /usr/share/polkit-1/actions/*teamviewer*

rm -rf ~/.local/share/teamviewer15/
