#!/bin/bash

SIZE="256"
if [ "$1" == "" ] ; then
	echo 'error: not enough arguments'
	exit 1
else
	USERNAME="$1"
fi

if [ "$2" ] ; then 
	SIZE="$2"
fi

wget -O "$USERNAME".png "http://gravatar.com/avatar/$(eval echo -n $USERNAME | md5 | sed -e 's/ .*//g')?s=$SIZE"
