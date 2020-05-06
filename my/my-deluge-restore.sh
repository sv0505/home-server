#!/bin/bash
source my-config.sh

systemctl stop deluge

unzip -o $SL-BACKUP/deluge/config.zip -d /
chown -R deluge:deluge /home/deluge/.config/deluge/*
find /home/deluge/.config/deluge -type d -exec chmod 700 {} \;
find /home/deluge/.config/deluge -type f -exec chmod 600 {} \;

systemctl start deluge
systemctl status deluge
