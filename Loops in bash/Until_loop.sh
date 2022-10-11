#!/bin/bash

COUNT=20
until [ $COUNT -lt 10 ]; do
    echo The counter value is $COUNT
    let COUNT-=1
done
