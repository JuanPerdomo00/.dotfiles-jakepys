#!/bin/bash

# Esta configuracion es propia de mi portatil y mi monitor


if xrandr | grep "HDMI-1 connected"; then
    # Si el HDMI está conectado
    xrandr --output HDMI-1 --auto --primary --output eDP-1 --off
else
    # Si mi portatil esta abierto
    xrandr --output eDP-1 --auto --primary --output HDMI-1 --off
fi

# Los anoto porque soy malo recordando xd

# Crear /etc/systemd/logind.conf
# Add to logind.conf "HandleLidSwitch=ignore"
# Crear /etc/systemd/system/toggle-screens.service
# ADD
# [Unit]
#Description=Toggle Screens

#[Service]
#ExecStart=/home/jakepy/toggle_screens.sh

#[Install]
#WantedBy=multi-user.target

# sudo systemctl enable toggle-screens.service

