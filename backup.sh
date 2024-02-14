#!/bin/bash

# Backup to external drive
BACKUP_SRC="/home/user/"
BACKUP_DEST="/mnt/backup_drive/backup_$(date +%Y%m%d)"
LOG_FILE="/var/log/backup.log"

echo "Starting backup: $(date)" | tee -a $LOG_FILE
rsync -avh --exclude='*.tmp' $BACKUP_SRC $BACKUP_DEST 2>&1 | tee -a $LOG_FILE
echo "Backup completed: $(date)" | tee -a $LOG_FILE

