#!/usr/bin/env bash

# /etc/networking/interfaces
# iface enp0s8 inet static
# address 10.0.0.101/24
# 
# hostname
# /etc/hostname

apt update
apt install samba -y

#[work]
#comment = work
#read only = no
#path = /home
#guest ok = no
