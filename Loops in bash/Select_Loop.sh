#!/bin/bash

PS3="Select a week day (1-7): "
select i in mon tue wed thur fri sat sun exit
do
  case $i in
     mon) echo "Monday";;
     tue) echo "Tuesday";;
     wed) echo "Wednesday";;
     thur) echo "Thursday";;
     fri) echo "Friday";;
     sat) echo "Saturday";;
     sun) echo "Sunday";;
     exit) exit;;
  esac
  done
  
