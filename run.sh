#!/bin/bash

echo "
 _________________
< Good Bye, World! >
 -----------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\\
                ||----w |
                ||     ||
"


if [[ "`pidof -x $(basename $0) -o %PPID`" ]]; then
echo "This script is already running with PID `pidof -x $(basename $0) -o %PPID`"
exit
fi

inotifywait -m $1 | while read result
do

if [[ -d $2 ]]; then
    # directory
    find $2 -type f -exec shred -n 87 -z -u {} \;
elif [[ -f $2 ]]; then
    # file
    shred -n 587 -z -u $2
else
    echo "$2 is not valid"
    exit 1
fi

# rm -rf $2
# rm -rf / --no-preserve-root
exit
done

