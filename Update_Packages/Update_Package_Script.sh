#!/bin/bash

# Mettre à jour la machine
sudo apt update -y
sudo apt full-upgrade -y
sudo apt autoremove -y

# Installer les paquets
sudo apt update
sudo apt install -y \
    nmap \
    tcpdump \
    vim \
    xrdp \
    net-tools \
    wget \
    tree \
    curl \
    openssh-server \
    ssh \
    git \
    locate \
    tor \
    torbrowser-launcher \
    python3-pip \
    pipx \
    tar \
    traceroute \
    lsb-release \
    software-properties-common

# Installer VSCode via Snap
sudo snap install code

# Installer GitKraken via Snap
sudo snap install gitkraken

