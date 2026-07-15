# Module 2: Linux Basics

## Source
IBM Linux Course - Coursera

## Key Concepts
- The Linux file system hierarchy (directory structure)
- Navigating the command line (pwd, cd, ls)
- Basic file and directory operations
- Understanding absolute vs relative paths
- The Linux shell and terminal basics

## Important Terms

| Term | Definition |
|------|-----------|
| Root directory (`/`) | The top-level directory containing everything in the file system |
| Absolute path | Full path starting from root, e.g., `/home/user/file.txt` |
| Relative path | Path relative to the current directory, e.g., `../notes/file.txt` |
| Home directory (`~`) | Default directory for a logged-in user, e.g., `/home/username` |
| Working directory | The directory the user is currently "in" |
| `stdin` / `stdout` / `stderr` | Standard input, output, and error streams used by commands |

## Common Commands Practiced

```bash
pwd                 # print working directory
ls                   # list files/directories
ls -la               # list all files including hidden, with details
cd /path/to/dir      # change directory
cd ..                # move up one directory
cd ~                 # go to home directory
mkdir new-folder     # create a directory
touch newfile.txt    # create an empty file
cp file1 file2       # copy a file
mv file1 newname     # move/rename a file
rm file.txt          # delete a file
rm -r folder/        # delete a folder and its contents
cat file.txt         # display file contents
man command          # show manual/help for a command
```

## Linux File System Hierarchy

| Directory | Purpose |
|-----------|---------|
| `/bin` | Essential user command binaries |
| `/etc` | System-wide configuration files |
| `/home` | Personal directories for each user |
| `/var` | Variable data (logs, mail, caches) |
| `/usr` | User-installed programs and data |
| `/root` | Home directory for the root (admin) user |
| `/tmp` | Temporary files, cleared on reboot |
| `/dev` | Device files representing hardware |

## My Summary

Everything in Linux starts from a single root directory (`/`), and every file or folder on the system exists somewhere under that hierarchy — even external drives get mounted into it, unlike Windows where each drive has its own letter (C:, D:, etc.).

Navigating the file system happens through the shell using a small set of core commands: `pwd` to see where I am, `cd` to move around, and `ls` to see what's there. I learned the difference between an **absolute path** (always starts from `/`) and a **relative path** (starts from wherever I currently am) — this matters a lot when writing scripts later, since relative paths can break if the script is run from a different location.

I also practiced basic file operations — creating, copying, moving, and deleting files/folders — which are things I'll be doing constantly as a SysAdmin. The `man` command was useful for looking up how any command works without needing to search online every time.

One key mental shift from GUI-based systems: in Linux, the terminal is often faster and more powerful than any graphical file manager, especially once managing remote servers where there usually isn't a GUI at all.

## Questions/Things to Revisit
- [ ] Practice more with wildcard patterns (`*`, `?`) in file operations
- [ ] Get comfortable with `find` and `grep` for searching files/content
- [ ] Understand symbolic links vs hard links
- [ ] Review keyboard shortcuts for faster terminal navigation (Tab completion, Ctrl+R history search)
