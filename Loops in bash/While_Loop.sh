#!/bin/bash

COUNT=0
while [ $COUNT -lt 10 ]; do
    echo The counter value is $COUNT
    let COUNT+=1
done
