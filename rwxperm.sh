#!/bin/sh
for var in *
        do
                if [ -r $var -a -w $var -a -x $var -a -x $var ]
                then
                        ls -l $var
                fi
done
