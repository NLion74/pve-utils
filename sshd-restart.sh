#!/bin/bash

GREEN="\033[1;32m"
NOCOLOR="\033[0m"

for lxc in $(lxc-ls -1 --running); do
    echo -e "lxc: ${GREEN}${lxc}${NOCOLOR}"
    echo -e "restarting sshd"
    pct exec $lxc -- bash -c "service sshd restart"
    echo ""
done