# project-trojen
Basic Demonstration of Trojan -

Backdoors: For Windows -

1. Check the execution permission of the script.
2. Do chmod 755 or chmod +x backdoor.sh
3. Run. /backdoor.sh

4. Choose your option for your liking. We are demonstrating for Windows.
5. Step for generation:
    Select 1 for windows.
    Select architecture of victim machine.
    Select the Platform and Path to software use for injecting payload.
    Enter your I.P address and a port with numbers 1024-49151 (registered ports).
    Enter a name for the malicious software “Keep in mind should be such as victim find it
genuine”
    Your Payload is generated!!!!!!
    Now send the payload to victim by any means and if he use it he will be hooked.


6. Now to exploit:
    Start the listener prompt.
    It will automatically setup msfconsole for you.
    When the victim use the software he will hooked.
    After he hooked you gain access of his Computer & can perform different object.
    We show screenshot for example.
    Ps for get PID’s in system.
    Migrate explorer’s pid i.e. migrate pid
    Use espia
    Screengrab

Backdoor Trojan using Python -

Creating Backdoor Trojan, we use python socket programming for creating session with victim
machine. Socket programming is a way of connecting two nodes on a network to communicate with
each other. One socket(node) listens on a particular port at an IP, while other socket reaches out to the other to form a connection.
Once we have sent victim trojan script to the victim machine through social engineering and
victim run the script on his machine, it will open a port for attacker to get connected to victim machine.

1. Run trojan_server.py script to get connected to victim’s open port, ip address and port number
are provided in trojan_server.py script. Make sure trojan_server.py has execute permission.
The command to run script is

python3 trojan_server.py

2. The victim machine shell is provided to us, where we can send command to the victim machine.
We can run command like ls -l, uname -v, whoami, who,tree on victim machine.

We can manipulate the victim machine like changing password of root, deleting a user and many more.

DDOS Trojan using Python -

A distributed denial-of-service (DDoS) attack is a malicious attempt to disrupt the normal
traffic of a targeted server, service or network by overwhelming the target or its surrounding
infrastructure with a flood of Internet traffic. We are using SYN flooding in DDOS.

1. Once connection establish between hacker machine and victim machine using python scripts, we
have to enter ”ddos” command and victim machine received the command and start ddos attack on
server on his network. Here victim machine acts as a Bot or Zombie. Victim server ip and port we have
provided in trojan_victim.py script.

2. Victim server is a windows 7 machine, machine receives countless SYN packets. After some time
it will get hang and stop responding.

Downloader Trojan -

Downloader is a type of Trojan virus that downloads and installs/executes one or more
malicious programs from the internet including Trojans and adware. Its main purpose is to download
additional content from internet such as additional pieces of malicious programs.
For Downloader Trojan to work, we need a web server from where victim machine downloads
the malicious script and run on victim machine.

1. Once connection establish between hacker machine and victim machine using python scripts, we
have to enter “downloader” command. Victim machine received the command and run downloader
trojan script which is included in trojan_victim.py

2. After running downloader Trojan, victim machine downloads malicious script from internet and it
will automatically run the malicious script on victim machine.
