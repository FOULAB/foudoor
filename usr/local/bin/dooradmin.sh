#!/bin/bash

umask 077


if [ "$#" == "0" ]; then
	echo "usage: dooradmin.sh username ssh key"
	exit 1
fi

#foudoor unlock script
export SHELL=/usr/local/bin/door.sh
export USERNAME=$1

useradd -s $SHELL -g foudoor -G gpio -d /home/$USERNAME -m $USERNAME


# Everything else is assumed to be the ssh key
shift
echo $@ >> /home/$USERNAME/.ssh/authorized_keys
