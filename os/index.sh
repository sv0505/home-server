#!/bin/bash
clear
echo "
0 Go back

1 Create Debian 10 usb key with Auto install
"

echo -n "Enter number : "
read CHOICE

[ $CHOICE -ne 1 ] && exit 1

case $CHOICE in
  1)
    bash ./os/os-create-debian-10-usb-key.sh
    ;;

  *)
    echo "unknown option pres ENTER to restart"
    read
    ;;
esac

bash ./os/index.sh