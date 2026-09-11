#!/bin/bash

SOURCE="$HOME/linux/data"
DEST="$HOME/linux/backup"

DATE=$(data +"%Y-%m-%d_%H-%M-%S")

tar -czf "$DEST/backup_$DATE.tar.gz" "$SOURCE"

echo "backup created:backup_$DATE.tar.gz"
