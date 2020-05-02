#!/bin/bash

echo "PREPARE0:SHELL:" $SHELL

echo "PREPARE0:Generate ssh key with USER" $USER
sudo -u $USER ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa 2>/dev/null <<< n >/dev/null

echo "PREPARE0:Install tools"
sudo apt install -y \
    vim \
    net-tools \
    curl \
    git
