# RHCSA Lab 06 Software Management (RPM & DNF)

## Overview
This hands-on lab focuses on software package management in Red Hat Enterprise Linux (RHEL), including package installation, removal, querying, updates, and repository management.

## Learning Objectives
- Understand RPM packages and DNF package management.
- Search, install, remove, and reinstall software packages.
- Inspect enabled DNF repositories.
- Identify package ownership of installed files.
- Explore Flatpak package management basics.

## Technologies Used
- Red Hat Enterprise Linux (RHEL)
- RPM Package Manager
- DNF Package Manager
- Bash
- Flatpak (Optional)

## Hands-on Practice

### 1. RPM Package Queries
```bash
rpm -qa
rpm -q bash
rpm -qi bash
rpm -ql bash
```

### 2. DNF Package Management
```bash
dnf search tree
dnf info tree
sudo dnf install tree
rpm -q tree
```

### 3. Repository Management
```bash
dnf repolist
dnf repolist --all
ls -l /etc/yum.repos.d/
```

### 4. Package Ownership
```bash
command -v tree
rpm -qf "$(command -v tree)"
```

### 5. Package Removal and Reinstallation
```bash
sudo dnf remove tree
sudo dnf install tree
rpm -q tree
```

## Mini-Project — Linux Package Lifecycle Management

**Objective:** Install a useful Linux utility, identify the package that owns its executable, remove it, and successfully reinstall it.

**Workflow:**
1. Search for the `tree` package.
2. Inspect package information.
3. Install the package using DNF.
4. Identify package ownership using RPM.
5. Remove the package.
6. Reinstall and verify its functionality.
7. Review the DNF transaction history.

## Verification
```bash
rpm -q tree
tree --version
dnf history
```

## Lab Evidence
Screenshots and terminal outputs are documented in the [Hands-on Lab](./hands-on-lab.md).

## Key Takeaways
- RPM provides package querying and verification capabilities.
- DNF handles package installation, removal, upgrades, and dependencies.
- Repositories provide software packages and metadata.
- Package ownership can be identified using `rpm -qf`.
- Package lifecycle management is an essential Linux System Administration skill.

## Lab Status
In progress — update after completing and verifying the hands-on exercises.
