#!/bin/bash

threshold=80
usage=$(df -h / | tail -1 | awk '{print $5}' | tr -d '%')

echo "Current disk usage: $usage%"

if [ "$usage" -ge "$threshold" ]; then
    echo "WARNING: Disk usage is high"
    exit 1
else
    echo "Disk usage is normal"
    exit 0
fi
