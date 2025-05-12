#!/bin/bash

#### Noel Rosario - Local Test Version
#### May 2025

#### Transfer Drive Backup - LOCAL TEST VERSION

### VARIABLES (Desktop test folders)
transferDrivefiles="$HOME/Desktop/TransferTest"
transferDriveBackup="$HOME/Desktop/TransferBackup"
date=$(/bin/date +"%A_%b_%d_%Y")
log="$HOME/Desktop/TransferBackupLog.log"

### FUNCTIONS

moveTransferFiles() {
    echo "Starting backup of transfer folder on $date" >> "$log"

    # Ensure the folders exist
    mkdir -p "$transferDrivefiles"
    mkdir -p "$transferDriveBackup/$date"

    echo "Created backup folder: $transferDriveBackup/$date" >> "$log"

    # Move files (if any)
    if [ "$(ls -A "$transferDrivefiles")" ]; then
        mv "$transferDrivefiles"/* "$transferDriveBackup/$date/"
        echo "Moved files to backup folder" >> "$log"
    else
        echo "No files to move from transfer folder." >> "$log"
    fi
}

checkBackup_Exists() {
    if [[ "$(ls -A "$transferDriveBackup/$date")" ]]; then
        echo "✅ Backup completed successfully on $date" >> "$log"
    else
        echo "❌ Backup FAILED or no files found on $date" >> "$log"
    fi
}

### RUN THE SCRIPT
moveTransferFiles
checkBackup_Exists

exit 0
