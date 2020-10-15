#!/bin/bash
# @param $1 Host
if [ -z "$1" ]
  then
  	echo "Hostname needs do be defined";
  	exit 1;
fi
target_host=$1 &&
ssh_file="$HOME/.ssh/$(date '+%Y%m%d')_$USER@$HOSTNAME""_to_$1""_id_rsa" &&
ssh-keygen -C "$USER@$HOSTNAME for $1 - Created at $(date '+%Y%m%d%H%M%S')" -b 4096 -t rsa -f "$ssh_file" &&
ssh-copy-id -i "$ssh_file" "$target_host" &&
echo "Growed and seeded ssh-key." &&
echo "Keep in mind to remove all unauthorized keys." &&
echo "You can do this by executing:" &&
echo "scp $ssh_file.pub $target_host:.ssh/authorized_keys" &&
exit
