#!/bin/bash

NUMBERS="one two three four five"

for number in $NUMBERS ; do
if [ $number = "two" ] ; then
 echo "bruh"
else
 echo "test $number"
fi
done

exit 0
