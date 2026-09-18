# Hands-on Lab - Linux File and Directory Management

## Objective

Practice essential Linux file and directory management commands as part of my RHCSA preparation.

## Lab Environment

- OS: Ubuntu 24.04 LTS
- Access: SSH
- Shell: Bash
- Lab Directory: `/tmp/company`

---

## 1. Create Company Directory Structure

Created multiple directories using Bash brace expansion.

```bash
mkdir -p /tmp/company/{hr,finance,development,backups,shared}
```

### Verify

```bash
ls -l /tmp/company
```

### Directory Structure

```text
/tmp/company/
├── hr/
├── finance/
├── development/
├── backups/
└── shared/
```

---

## 2. Create Sample Files

Created sample files inside each department directory.

```bash
touch /tmp/company/hr/employees.txt
touch /tmp/company/finance/budget.txt
touch /tmp/company/development/project.txt
touch /tmp/company/shared/notice.txt
```

### Verify

```bash
find /tmp/company -type f
```

---

## 3. Copy a File

Copied the HR employee file into the development directory.

```bash
cp /tmp/company/hr/employees.txt /tmp/company/development/
```

### Verify

```bash
ls -l /tmp/company/development/
```

Expected files:

```text
employees.txt
project.txt
```

---

## 4. Copy a Directory Recursively

Copied the entire `finance` directory into the `hr` directory.

```bash
cp -r /tmp/company/finance /tmp/company/hr/
```

### Verify

```bash
ls -l /tmp/company/hr/
```

The HR directory now contains the copied `finance` directory.

---

## 5. Find Files

### Find all `.txt` files

```bash
find /tmp/company -name "*.txt"
```

### Find only regular files

```bash
find /tmp/company -type f
```

### Find only directories

```bash
find /tmp/company -type d
```

### Display the complete structure

```bash
find /tmp/company
```

---

## 6. Create a Test Directory and File

Created an additional test directory.

```bash
mkdir /tmp/company/test
touch /tmp/company/test/test.txt
```

### Verify

```bash
ls -l /tmp/company/test
```

---

## Commands Practiced

| Command | Purpose |
|---|---|
| `mkdir` | Create a directory |
| `mkdir -p` | Create directories including missing parent directories |
| `touch` | Create an empty file |
| `cp` | Copy a file |
| `cp -r` | Copy a directory recursively |
| `ls` | List files and directories |
| `find` | Search for files and directories |

---

## What I Learned

- `mkdir -p` can create missing parent directories automatically.
- Bash brace expansion `{}` can be used to create multiple directories efficiently.
- `touch` can create empty files.
- `cp` copies files from one location to another.
- `cp -r` recursively copies directories and their contents.
- `find` can search files and directories using different conditions.
- `-type f` searches for regular files.
- `-type d` searches for directories.
- `-name` searches using a filename or pattern.
- Absolute paths begin from the root directory `/`.

---

## Hands-on Evidence

Terminal screenshots from this lab are stored in the `screenshots` directory.

Example directory:

```text
02-file-directory-management/
├── README.md
├── hands-on-lab.md
└── screenshots/
```

---

## RHCSA Practice Note

The goal of this lab was not only to memorize commands, but to practice creating, copying, locating, and managing files and directories directly from the Linux command line.
