#!/bin/bash
source ./my/my-config.sh

chown -R deluge:deluge "${MYSVIT_DELUGE}/*"
find "${MYSVIT_DELUGE}" -type d -exec chmod 755 {} \;

if [ -f "${MYSVIT_BACKUP}/deluge/config.zip" ]
then
  systemctl stop deluge

  unzip -o "${MYSVIT_BACKUP}/deluge/config.zip" -d /
  chown -R deluge:deluge /home/deluge/.config/deluge/*
  find /home/deluge/.config/deluge -type d -exec chmod 700 {} \;
  find /home/deluge/.config/deluge -type f -exec chmod 600 {} \;

  systemctl start deluge
  systemctl status deluge
fi

