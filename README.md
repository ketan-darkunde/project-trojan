# Project Trojan

Educational demonstration of various Trojan malware implementations for cybersecurity research and learning purposes.

## Overview

This project provides practical demonstrations of different types of Trojan malware, including backdoors, DDoS attacks, and downloader trojans. The implementations use both shell scripting and Python socket programming to illustrate attack methodologies.

## Contents

- **Backdoor Trojan**: Windows-based backdoor implementation
- **DDoS Trojan**: Distributed denial-of-service attack using SYN flooding
- **Downloader Trojan**: Malicious payload downloader

---

## 1. Backdoor Trojan (Windows)

### Setup Instructions

1. Set execution permissions on the script:
   ```bash
   chmod 755 backdoor.sh
   # or
   chmod +x backdoor.sh
   ```

2. Execute the script:
   ```bash
   ./backdoor.sh
   ```

### Payload Generation

Follow these steps in the script to generate a payload:
1. Select option 1 for Windows target
2. Select the victim machine architecture
3. Choose the platform and specify the path to injection software
4. Enter your IP address and a port number (range: 1024-49151, registered ports)
5. Enter a name for the malicious software (should appear legitimate to the victim)
6. Generate the payload
7. Transmit the payload to the victim using social engineering techniques
8. Once executed by the victim, connection is established

### Exploitation

After the victim executes the payload:

1. Start the listener prompt (automatically configures msfconsole)
2. Monitor victim machine connection
3. Use system enumeration commands:
   - `ps` - View running processes and their PIDs
   - `migrate [PID]` - Migrate to an explorer process for privilege escalation
4. Execute post-exploitation modules:
   - `espia` - Keystroke logging and screen capture capabilities
   - `screengrab` - Capture victim's screen

---

## 2. Backdoor Trojan (Python Implementation)

### Technical Overview

Creating Backdoor Trojan, we use python socket programming to establish a persistent connection between attacker and victim machines. Socket programming enables bidirectional communication between two network nodes.

**Attack Flow:**
1. Distribute trojan script to victim via social engineering
2. Victim executes the script, opening a listening port
3. Attacker connects to victim's open port and establishes a reverse shell

### Execution

1. Configure target details in `trojan_server.py`:
   - Victim IP address
   - Target port number

2. Ensure execute permissions are set on the script

3. Run the server:
   ```bash
   python3 trojan_server.py
   ```

### Command Execution

Once connected, you gain shell access to the victim machine and can execute arbitrary commands:

**Examples:**
- `ls -l` - List directory contents in detail
- `uname -v` - Display system version information
- `whoami` - Identify current user
- `who` - Show active user sessions
- `tree` - Visualize directory structure

**Privilege Escalation & Manipulation:**
- Change root password
- Create/delete user accounts
- Modify system configurations

---

## 3. DDoS Trojan (Python Implementation)

### Technical Definition

A distributed denial-of-service (DDoS) attack floods a target server, service, or network with massive volumes of traffic, rendering it unavailable to legitimate users. This implementation uses SYN flooding to achieve the denial-of-service.

### Operational Mechanism

1. Establish connection between attacker and victim machines using Python scripts
2. Transmit "ddos" command to victim machine
3. Victim machine (acting as a bot/zombie) launches DDoS attack on specified target
4. Target server is overwhelmed with SYN packets and becomes unresponsive

### Configuration

- Victim server IP and port are configured in `trojan_victim.py`
- Tested on Windows 7 environments
- Results in target machine becoming unresponsive after sustained attack

---

## 4. Downloader Trojan

### Definition

A downloader trojan is a malicious program that automatically downloads and executes additional malware from the internet, including trojans and adware. It serves as a delivery mechanism for secondary payloads.

### Requirements

- Web server hosting malicious payloads
- Network connectivity from victim to payload server

### Operational Steps

1. Establish connection between attacker and victim machines
2. Send "downloader" command to victim
3. Victim machine executes downloader trojan (included in `trojan_victim.py`)
4. Malicious script is automatically downloaded and executed
5. Additional malware is installed on victim system

---

## Disclaimer

This project is provided for **educational and authorized security research purposes only**. Unauthorized access to computer systems is illegal. Users are responsible for ensuring compliance with applicable laws and regulations in their jurisdiction.
