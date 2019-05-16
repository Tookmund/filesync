#!/bin/sh

. remhost
if [ "$#" -ne 1 ]
then
	echo "Please provide a name!"
	exit 1
fi

ssh-keygen -C "$1" -f "$1" -N ""

FILENAME="$1"-filesync.command
cat remhost filesync.sh.start "$1" filesync.sh.end > "$FILENAME"
chmod +x "$FILENAME"

ssh-copy-id -i "$1" "$REMUSER"@"$REMHOST"

rm "$1" "$1.pub"
