# Bash Backup Automation Script

## Project Overview

This is a simple Bash backup automation project created as part of my
Linux System Administration learning journey.

The script accepts a source directory and a backup destination as
command-line arguments and creates a compressed `.tar.gz` backup
with the current date in the filename.

## Skills Practiced

- Bash variables
- Command-line arguments
- `if` conditions
- Directory validation
- Command substitution
- `mkdir`
- `tar`
- Exit codes
- Basic error handling

## Usage

```bash
chmod +x backup.sh

./backup.sh SOURCE_DIR BACKUP_DIR
