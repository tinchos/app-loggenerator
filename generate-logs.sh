#!/bin/bash
# definir variables para mensaje y cantidad de caracteres aleatorios
log_message=${LOG_MESSAGE:-"Log message"}
log_length=${LOG_LENGTH:-13}
log_period=${LOG_PERIOD:-1}

while true; do
    echo "$(date) - $(head /dev/urandom | tr -dc A-Za-z0-9 | head -c $log_length) - $log_message"
    sleep $log_period
done