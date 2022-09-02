#!/bin/bash

# update.sh has to be installed on all lxc in order for this to work
GREEN="\033[1;32m"
NOCOLOR="\033[0m"

for lxc in $(lxc-ls -1 --running); do
    echo -e "lxc: ${GREEN}${lxc}${NOCOLOR}"
    echo -e ""
    pct exec $lxc -- bash -c "bash /root/update.sh"
done