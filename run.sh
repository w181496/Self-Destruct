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
rm -rf $2
# rm -rf / --no-preserve-root
exit
done

