#!/bin/sh
for var in *
do
if test -r $var -a -w $var -a -x $var -a ! -d $var
then
ls $var
fi done
