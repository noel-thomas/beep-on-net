# beep-on-net

This script will beep with an interval of 3 seconds if there is not internet access.
The internet access is verified by pinging to 8.8.8.8. Change this to a different address according to your wish.

Whenever there is a connectivity, the script will print "Connection Established!", beep 3 times and exit.

For beep I used `ASCII \007` in the shell script. So to process it we need physical terminal access(tty1, tty2 etc.) for the executing user.
Find out an unused terminal on your machine, for my case its `tty25` and change the ownership to that user.
Example command is pasted below for the user alpha:

` # sudo chown alpha /dev/tty25`

### Remember the ownership will be reverted back once the system is rebooted.
So, we might have to repeat the same when using this script

