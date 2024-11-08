#!/bin/bash

# Esta configuracion es propia de mi portatil y mi monitor


if xrandr | grep "HDMI-1 connected"; then
    # Si el HDMI está conectado
    ~/.screenlayout/hdmi-1.sh
else
    # Si mi portatil esta abierto
    ~/.screenlayout/portatil.sh
fi
