#!/bin/bash

GREEN="\033[1;32m"
NOCOLOR="\033[0m"

bash $HOME/pve-utils/update-lxc.sh
    echo -e "pve-host: ${GREEN}pve-host${NOCOLOR}"
    echo -e ""
bash $HOME/update.sh