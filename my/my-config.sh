#!/bin/bash
FSTAB="/etc/fstab"

# HDD 8TB
USB_DEV_8T_1="/dev/sdc1"
USB_ID_8T_1="FGH09H_GJH984"
MOUNT_PATH_8T_1="/media/hdd-8T-1"

# HDD 500GB
USB_DEV_500G_1="/dev/sdc2"
USB_ID_500G_1="??????_GJH984"
MOUNT_PATH_500G_1="/media/hdd-500G-1"

# MY ROOT FOLDER
MYSVIT="/mysvit"
MYSVIT_DELUGE="${MYSVIT}/deluge"

# BACKUP
PH_BACKUP="${MOUNT_PATH_8T_1}/backup"
SL_BACKUP="${MYSVIT}/backup"
# MEDIA
PH_MEDIA="${MOUNT_PATH_8T_1}/media"
SL_MEDIA="${MYSVIT}/media"
# DELUGE download
SL_D_DOWNLOAD="${MYSVIT_DELUGE}/download"