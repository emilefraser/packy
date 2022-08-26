#!/bin/bash
sudo apt install xrdp -y
sudo apt install remmina remmina-plugin-vnc
sudo usermod -a -G ssl-cert xrdp 
