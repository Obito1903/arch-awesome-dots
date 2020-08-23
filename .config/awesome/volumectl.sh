#!/bin/sh

sink=$(pactl info | grep 'Sink:' | awk -F': ' '{print $2}')
echo $sink
echo $(pactl set-sink-volume $sink $15%)