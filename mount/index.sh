#!/bin/bash
clear 
echo "
0 Go back

1 Mount USB
2 Mount SAMBA
"

echo -n "Enter number:"
read SELECT

if [ $SELECT -eq 0 ]
then
    echo "You exited from script."
else

case $SELECT in

  1)
    bash ./mount/mount-usb.sh
    ;;

  2)
    bash ./mount/mount-samba.sh
    ;;

  *)
    echo "unknown option pres ENTER to restart : "
    read
    ;;
esac

# run script again simulate goto to begin
bash index.sh

fi
