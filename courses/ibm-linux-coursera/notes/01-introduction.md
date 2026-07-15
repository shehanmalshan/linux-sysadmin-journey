# Module 1: Introduction to Linux

## Source
IBM Linux Course - Coursera

## Key Concepts
- What is an operating system (kernel + shell + utilities)
- History of Linux and open-source philosophy
- Difference between Linux distributions (Ubuntu, RHEL, etc.)

## Important Terms

| Term | Definition |
|------|-----------|
| Kernel | Core of the OS that manages hardware/resources |
| Shell | Command-line interface to interact with the kernel |
| Distro | A packaged version of Linux (Ubuntu, Fedora, etc.) |
| Open Source | Software whose source code is publicly available to view, modify, and distribute |
| GNU/Linux | The full system name — GNU tools + Linux kernel working together |
| Package Manager | Tool used to install, update, and remove software (e.g., apt, yum) |

## My Summary

Linux is an open-source operating system built around the Linux kernel, originally created by Linus Torvalds in 1991. Unlike proprietary operating systems like Windows or macOS, Linux's source code is freely available, which means anyone can inspect, modify, and redistribute it. This openness is what led to the creation of many different "distributions" (distros) — each one packages the Linux kernel together with different sets of tools, package managers, and default configurations to serve different purposes.

The OS itself is made up of three main layers:
1. **Kernel** — the core that directly manages hardware (CPU, memory, disk, devices)
2. **Shell** — the interface (usually command-line, like Bash) that lets users send instructions to the kernel
3. **Utilities/Applications** — the tools and programs built on top (like `ls`, `grep`, text editors, servers)

Different distributions exist because different use cases need different priorities. For example:
- **Ubuntu/Debian** — beginner-friendly, large community, good for desktops and general servers
- **RHEL/CentOS/Rocky Linux** — built for enterprise stability and long-term support, common in corporate/production environments

Understanding this foundation matters because as a future SysAdmin, I'll be choosing/configuring distros based on the environment I'm working in — a home lab, a company server, or a cloud deployment will each have different needs.

## Questions/Things to Revisit
- [ ] Need to review process scheduling in more depth
- [ ] Compare package managers across distros (apt vs yum vs dnf) in more detail
- [ ] Understand licensing differences (GPL vs other open-source licenses)
