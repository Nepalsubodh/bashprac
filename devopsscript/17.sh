#!/bin/bash

read -p "Enter directory path to back up: " dir
date=$(date +%F)
backup_name="backup-$date.tar.gz"
tar -czf "$backup_name" "$dir"
echo "Backup created: $backup_name"
