#!/bin/bash
read -p "Enter service name: " service
status=$(systemctl is-active "$service")
if [ "$status" = "active" ]; then
    echo "$service is running"
else
    echo "$service is NOT running"
fi
