#!/bin/bash

if [ -n "$(uname -m | grep arm)" ]                                                  # -n : lenght of string non zero
    then                                                                            # if arm architecture :
        pkg_dependencies="xserver-xorg-legacy xorg dbus-x11 kodi kodi-pvr-hts" 
        start_cmd="/usr/bin/kodi-standalone"
    else                                                                            # if non arm architecture :
        pkg_dependencies="xorg xinit dbus-x11 kodi kodi-pvr-hts" 
        start_cmd="/usr/bin/xinit /usr/bin/dbus-launch --exit-with-session /usr/bin/kodi-standalone -- :0 -nolisten tcp vt7"
fi
