#!/bin/bash
while true; do
    echo "$(date) - $(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13) - Log message"
    sleep 1
done