#!/bin/sh

if [ "$#" -ne 1 ]
then
	echo "Please provide a name!"
	exit 1
fi

ssh-keygen -C "$1" -f "$1" -N ""

FILENAME="$1"-filesync.sh
cat filesync.sh.start "$1" filesync.sh.end > "$FILENAME"
chmod +x "$FILENAME"
