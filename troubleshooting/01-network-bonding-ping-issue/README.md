# Linux Network Bonding – Troubleshooting Case 01

## 1. Problem Description

While testing Active-Backup network bonding on RHEL,
I noticed that ping requests to the bond IP address
remained successful even when both member interfaces
were disconnected.

The expected behavior was that external network
connectivity should fail when both interfaces were down.

## 2. Lab Environment

| Component | Configuration |
|---|---|
| Operating System | RHEL 9 |
| Virtualization | Oracle VirtualBox |
| Bond Interface | bond0 |
| Member Interface 1 | enp0s8 |
| Member Interface 2 | enp0s9 |
| Management Interface | enp0s3 |
| Bonding Mode | Active-Backup (Mode 1) |
| Original IP | 192.168.56.1/24 |
| New IP | 192.168.56.10/24 |
| Client | Windows Host |

## 3. Troubleshooting and Investigation

I used the following commands to investigate the issue.

Check network interface status:

```bash
nmcli device status
```

Check IP addresses:

```bash
ip -br addr
```

Check bonding status:

```bash
cat /proc/net/bonding/bond0
```

Check the network routing path:

```bash
ip route get 192.168.56.1
```

Check Windows network configuration:

```powershell
ipconfig
```

## 4. Root Cause Analysis

The investigation identified two possible causes:

- Linux was responding to its own local IP address
  through the local network stack without using
  the physical network interfaces.

- The bond interface IP address (192.168.56.1)
  potentially conflicted with the Windows VirtualBox
  Host-Only network adapter IP address.

The successful ping response did not prove that
the bond interface had external network connectivity.

## 5. Solution

The solution was to assign a unique IP address
to the bond interface.

Original IP:

192.168.56.1/24

New IP:

192.168.56.10/24

I used the following configuration:

```bash
sudo nmcli connection modify bond0 \
ipv4.method manual \
ipv4.addresses 192.168.56.10/24 \
ipv4.gateway "" \
ipv4.never-default yes
```

Reactivate the bond connection:

```bash
sudo nmcli connection down bond0
sudo nmcli connection up bond0
```

Activate the existing bond member connections.

Verify the configuration:

```bash
ip -br addr
nmcli device status
cat /proc/net/bonding/bond0
```

The SSH management interface (enp0s3) was kept separate
from the bonded interfaces.

## 6. High Availability Testing

Start continuous ping from the Windows host:

```powershell
ping -t 192.168.56.10
```

Disconnect the active member interface:

```bash
sudo nmcli device disconnect enp0s8
```

Check whether the backup interface becomes active:

```bash
cat /proc/net/bonding/bond0
```

Disconnect the remaining member interface:

```bash
sudo nmcli device disconnect enp0s9
```

### Expected Results

| Test Scenario | Expected Result |
|---|---|
| Both interfaces connected | Ping successful |
| Active interface disconnected | Backup becomes active |
| One interface available | Connectivity maintained |
| Both interfaces disconnected | Ping fails |
| Member interface reconnected | Connectivity restored |

## 7. Lessons Learned

- A successful ping does not always prove external
  network connectivity.
- Linux can respond to its own local IP address.
- Duplicate IP addresses can cause misleading
  network troubleshooting results.
- Active-Backup bonding provides network redundancy.
- At least one operational member interface is
  required for external connectivity through the bond.
- High availability should be tested from an
  independent client.
- Management and service network interfaces should
  be separated when performing failure testing.
- Diagnostic commands are important for identifying
  the root cause before applying a solution.

## 8. Skills Developed

- Linux System Administration
- Linux Network Bonding
- NetworkManager (nmcli)
- IP Address Configuration
- Network Troubleshooting
- Active-Backup Failover
- High Availability
- Root Cause Analysis
- Technical Documentation

## 9. Screenshot Evidence

The following screenshots document the problem,
investigation, configuration and verification process.

### Evidence 01

![Evidence 01](./images/tb (2).png)

### Evidence 02

![Evidence 02](./images/tb (3).png)

### Evidence 04

![Evidence 03](./images/tb (4).png)

### Evidence 05

![Evidence 04](./images/tb (5).png)

### Evidence 06

![Evidence 05](./images/tb (6).png)



---

*Part of my Linux System Administration and RHCSA
hands-on learning journey.*
