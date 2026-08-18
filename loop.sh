#!/bin/bash

for i in {1..5}
do
    if [ $((i % 2)) -eq 0 ]; then
        echo "$i is even"
    else
        echo "$i is odd"
    fi
done


read -p "Enter a number of your choice: " choice
while true; do
    if [ $((choice%2)) -eq 0 ]; then
        choice=$(($choice-5))
        echo "The number you entered is even. Subtracting 5 from it gives: $choice"

    elif [ $choice -le 0 ]; then
        echo "The number you entered is less than or equal to 0. Exiting the loop."
        break

    else
        choice=$(($choice-10))
        echo "The number you entered is odd. Subtracting 10 from it gives: $choice"
    fi
done
  