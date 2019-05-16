FileSync
========



How to Use
----------

1. Setup a file server with SSH access. An AWS EC2 instance works great,
just make sure you allocate enough storage.
2. Create a `remhost` file in this repo with the settings of your server:
``` sh
REMHOST=server.example.com # Hostname of your server
REMUSER=user # Username to ssh into your server with
REMPORT=22 # The port your ssh server is listening on, probably 22
```
3. Run the `newshare.sh` script, passing the name of the person you want to
share to, e.g. `newshare.sh john`. You'll be asked to login to copy the newly
generated key to your `authorized_keys` file
4. Send your friend the `user-filesync.command` if they're on a mac,
or `user-filesync.ps1` plus the `win/` folder if they're on windows
5. They should put the script file (plus the win folder if on windows) into
the folder they are trying to transfer and then double-click it to run it.
(On Mac, they may have to `chmod +x` the file first, to mark it as executable.
Ideally you would give them the file on a flash drive so that it is already
marked as such)

Warning!
--------
This repo includes a windows build of rsync from somewhere (I don't remember
where I got it). It's woefully out-of-date. You should probably update if you
can.
