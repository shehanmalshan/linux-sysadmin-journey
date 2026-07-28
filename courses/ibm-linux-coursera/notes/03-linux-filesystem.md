# Module 3: Linux Filesystem

> Learn how the Linux filesystem is organized, how files and directories are structured, and how to navigate the Linux directory hierarchy.

---

# 📖 Overview

The Linux filesystem organizes all files and directories into a single hierarchical tree that starts from the **root directory (`/`)**.

Unlike Windows, Linux does **not** use drive letters like `C:` or `D:`. Everything—including hard drives, USB devices, and network storage—is mounted somewhere under the root (`/`).

Understanding the Linux filesystem is essential for system administration, shell scripting, and daily command-line usage.

---

# 🎯 Learning Objectives

After completing this module, you should be able to:

- Understand the Linux filesystem hierarchy
- Identify the purpose of major system directories
- Navigate the filesystem efficiently
- Differentiate between absolute and relative paths
- Understand mounting concepts
- Locate important system files

---

# 📚 Topics Covered

## 1. Linux Filesystem Hierarchy

Learn how Linux organizes files and directories in a tree structure.

Example:

```text
/
├── bin
├── boot
├── dev
├── etc
├── home
├── lib
├── media
├── mnt
├── opt
├── proc
├── root
├── run
├── sbin
├── srv
├── sys
├── tmp
├── usr
└── var
```

---

## 2. Root Directory (`/`)

- Top-level directory
- Starting point of the entire filesystem
- Every file and folder exists under this directory

Example:

```bash
cd /
pwd
```

---

## 3. Home Directory (`/home`)

Stores personal files for users.

Example:

```text
/home/john
/home/alex
/home/shehan
```

Useful commands:

```bash
cd ~
cd /home
```

---

## 4. Current Directory

Display your current location.

Command:

```bash
pwd
```

Example output:

```text
/home/shehan/Documents
```

---

## 5. Absolute vs Relative Paths

### Absolute Path

Starts from the root directory.

Example:

```text
/home/shehan/Documents/file.txt
```

### Relative Path

Starts from your current location.

Example:

```text
Documents/file.txt
```

---

## 6. Important Linux Directories

| Directory | Purpose |
|-----------|---------|
| `/` | Root directory |
| `/home` | User home directories |
| `/root` | Home directory of the root user |
| `/bin` | Essential user commands |
| `/sbin` | System administration commands |
| `/etc` | Configuration files |
| `/usr` | User applications and libraries |
| `/var` | Log files and variable data |
| `/tmp` | Temporary files |
| `/dev` | Device files |
| `/proc` | Process and kernel information |
| `/boot` | Bootloader and kernel files |
| `/media` | Automatically mounted removable devices |
| `/mnt` | Temporary mount points |
| `/opt` | Optional third-party software |

---

## 7. Files and Directories

Learn the difference between:

- Regular files
- Directories
- Hidden files
- Symbolic links

Examples:

```bash
ls
ls -a
```

---

## 8. Hidden Files

Hidden files begin with a dot (`.`).

Examples:

```text
.bashrc
.profile
.gitconfig
```

View hidden files:

```bash
ls -a
```

---

## 9. Viewing Directory Contents

Useful commands:

```bash
ls
ls -l
ls -la
ls -lh
tree
```

---

## 10. Filesystem Navigation

Commands:

```bash
pwd
cd
cd ..
cd ~
cd /
ls
```

---

## 11. Mount Points

Linux attaches storage devices to directories.

Examples:

```text
/media
/mnt
```

Check mounted filesystems:

```bash
mount
df -h
```

---

## 12. Finding Files

Locate files and directories.

Commands:

```bash
find
locate
which
whereis
```

Examples:

```bash
find /home -name notes.txt

which python

whereis bash
```

---

# 🛠 Commands Practiced

```bash
pwd
cd
ls
ls -la
tree
find
which
whereis
mount
df -h
```

---

# 📌 Key Concepts

- Linux uses a tree-like filesystem.
- Everything starts from the root directory (`/`).
- User files are stored in `/home`.
- Configuration files are stored in `/etc`.
- System logs are stored in `/var/log`.
- Temporary files are stored in `/tmp`.
- Devices appear as files in `/dev`.
- Running processes are represented in `/proc`.

---

# 💻 Practice Exercises

### Exercise 1

Display your current directory.

```bash
pwd
```

---

### Exercise 2

Navigate to the root directory.

```bash
cd /
```

---

### Exercise 3

List all files, including hidden ones.

```bash
ls -la
```

---

### Exercise 4

Go to your home directory.

```bash
cd ~
```

---

### Exercise 5

Find a file named `notes.txt`.

```bash
find /home -name notes.txt
```

---

# 📚 Summary

In this module, you learned:

- Linux filesystem hierarchy
- Root directory
- Home directories
- Important system directories
- Absolute and relative paths
- Hidden files
- Filesystem navigation
- Mount points
- Finding files
- Essential filesystem commands

---

# 📖 Next Module

➡️ **Module 4: File Permissions**

Topics include:

- File permissions
- Ownership
- `chmod`
- `chown`
- `chgrp`
- Numeric permissions
- Symbolic permissions
- Special permissions (SUID, SGID, Sticky Bit)
