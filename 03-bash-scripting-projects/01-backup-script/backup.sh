#!/bin/bash

# Simple Backup Automation Script
# Usage: ./backup.sh SOURCE_DIR BACKUP_DIR

source_dir=$1
backup_dir=$2
today=$(date +%Y-%m-%d)

if [ -z "$source_dir" ] || [ -z "$backup_dir" ]; then
    echo "Usage: $0 SOURCE_DIR BACKUP_DIR"
    exit 1
fi

if [ ! -d "$source_dir" ]; then
    echo "Source directory does not exist"
    exit 2
fi

if [ ! -d "$backup_dir" ]; then
    mkdir -p "$backup_dir"
fi

tar -czf "$backup_dir/backup-$today.tar.gz" "$source_dir"

if [ $? -eq 0 ]; then
    echo "Backup completed successfully "
else
    echo "Backup failed "
fi
