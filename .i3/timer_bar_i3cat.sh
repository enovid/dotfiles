#!/bin/sh

#color='#2AA198'
color='#ffb243'
fifo_name="/home/enovid/.timer_bar_cache"

while :; do
    if IFS= read -r line<$fifo_name; then
        i3cat encode --name timer --instance "progress bar" --color "${color}" "$line"
    fi
done &
