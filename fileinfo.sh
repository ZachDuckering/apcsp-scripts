#!/bin/bash
# fileinfo.sh

FILES="/usr/sbin/accept /usr/sbin/pwck /usr/bin/fakefile /sbin/badbloacks /sbin/ypbind"
# List of files you are curious about.
# Note - there is a dummy file to test: /usr/bin/fakefile

echo

for file in $FILES ; do
   if [ ! -e "$file" ] ; then
       echo "$file does not exist."; echo
       continue			# On to next.
   fi

   ls -l $file | awk '{ print $9 "          file size: " $5 }'   # Print 2 fields.
   whatis 'basename $file'    # File info.

   echo
done
exit 0

