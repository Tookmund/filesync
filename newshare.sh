#!/bin/sh

. remhost
if [ "$#" -ne 1 ]
then
	echo "Please provide a name!"
	exit 1
fi

ssh-keygen -C "$1" -f "$1" -N ""

FILENAME="$1"-filesync
sed s/^/$/g remhost > remhost.ps1
cat remhost filesync.sh.start "$1" filesync.sh.end > "$FILENAME.command"
cat remhost.ps1 filesync.ps1.start "$1" filesync.ps1.end > "$FILENAME.ps1"
chmod +x "$FILENAME.command"
chmod +x "$FILENAME.ps1"

ssh-copy-id -i "$1" "$REMUSER"@"$REMHOST"

rm "$1" "$1.pub"
