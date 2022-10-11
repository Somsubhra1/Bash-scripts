#!/bin/bash

quiz() {
    echo "Here's your question:"
    random1=$(($RANDOM / 100))
    random2=$(($RANDOM / 100))
    result=$(($random1 + $random2))
  
    echo "What is $random1 + $random2?"
    read response
    if [ "$response" == $result ]
    then
        echo "Bravo! You're a genius."
    else 
        echo "Sorry, you need to get your math right!"
    fi
}

echo "Ready to test your math expertise? (Yes/No)"
read response
if [ "$response" == "Yes" ]
then 
    SECONDS=0
    quiz
    echo "You took $SECONDS seconds to answer."
else 
    echo "See you later!"
fi