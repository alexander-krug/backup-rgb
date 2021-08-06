#!/bin/bash
echo "Current free disk space"
df -h | grep /home

tar --exclude='/proc' --exclude='/home/alex/Downloads' --exclude='/home/alex/Desktop/RHCE-EX294' --exclude='/home/alex/.mozilla' --exclude='/home/alex/.config/Signal' --exclude='/home/alex/.config/discord' --exclude='/home/alex/.local/share/Steam' --exclude='/home/alex/.local/share/Trash' --exclude='/home/alex/.local/share/containers' --exclude='/home/alex/.cache' --exclude='/tmp' --exclude='/home/alex/Dropbox' --exclude='/home/alex/VirtualBox\ VMs' -zcvf /home/alex/Downloads/backup1.gz /

echo "Free disk space after backup"
df -h | grep /home
exit
