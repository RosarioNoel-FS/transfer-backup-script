# Transfer Backup Script (macOS)

## Overview
This is a simple Bash script that automates the backup of files from a source folder (`TransferTest`) into a date-stamped backup folder (`TransferBackup`) on macOS.

Useful for IT workflows where files are collected during the week and backed up on a schedule.

---

## What It Does
- Creates a dated folder (e.g. `Monday_May_12_2025`) inside a backup directory.
- Moves all files from the `TransferTest` folder into the new backup folder.
- Logs all actions to a log file (`TransferBackupLog.log`).

---

## 📁 Folder Setup (Default)
| Folder | Purpose |
|--------|---------|
| `~/Desktop/TransferTest` | The source folder where files are dropped |
| `~/Desktop/TransferBackup` | Where backups are stored by date |
| `~/Desktop/TransferBackupLog.log` | Log file for all script activity |

---

## 🛠️ How to Use

### 1. Make the script executable:
```bash
chmod +x install_backup.sh
```

### 2. Run the script manually:
```bash
./install_backup.sh
```

The script will:
- Create a new folder inside `TransferBackup` using today’s date.
- Move any files from `TransferTest` into that folder.
- Log its actions to `TransferBackupLog.log`.

---

## ⏰ Automation (Optional)

To automate this script (e.g., every Sunday at 6 PM), use a macOS `launchd` `.plist` file that schedules the script to run.

> A sample `.plist` file can be added in the future if automation is needed.

---
