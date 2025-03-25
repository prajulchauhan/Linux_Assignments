## Introduction

In this section we will try to understand service management, file sharing management, shared filesystem management and iptables.

---
### IPTABLES 
---
#### Must Do

- How many tables are there in iptables. What filter and nat table responsible for
- What are the defualt policies in iptables and What it signifies.
- What is the difference between -I and -A while applying a rule in iptables
- Make a shell script that would configure a firewall as below
    - Flush all the rules
    - set default DROP policy for INPUT, ACCEPT for FORWARD and OUTPUT chain of filter table
    - Allow ssh from vagrant machine1 only
    - Allow port 80,443 from everywhere
    - Allow ping from outside
    - Allow loopback Access
    - Allow DNS
    - Allow rsync from outside
    - Allow postfix or sendmail

--- 
### SERVICE MANAGEMENT  
---
#### Must Do

- Install tomcat on your system
- create a init service for tomcat to start, stop and restart it.
- create a systemd service for tomcat to start, stop and restart it.
- enable the tomcat init and systemd service to start automatically after system reboot.
- list out all the enable services in your system.
- List out the difference between init and systemd.

---
### FILE SHARING  
---
#### Must Do
##### SCP

- copy the abc.txt file from local system to remote system in /tmp directory.  
- Rename the file abc.txt to xyz.txt while copying to other remote system.  
- copy all files in the directory "images" in user ninja home directory whose name starts with "image" and ends in ".jpg" into the your home directory.  

##### SFTP

- Make the directory ninja on remote system and copy the all jpg file from local system to remote system in ninja directory.  
- Download all the text file from remote system to your local system.  
- copy the install_nexus.sh scrpit on remote system and make it excuteable on remote system using sftp.

##### vsftpd

- Install vsftp on your sytsem.
- Create a admin user with full access to the server
- Disable anonymous login and allow local users to write.
- Make three user Thanos,ironman,thor.The ironman and thor which can only access the vsftp server and Thanos cannot allow to access the server.

---
#### Good to Do
---

- Change the SFTP port of ftp server and than copy the file at remote system after change the port.
- Store the apt/yum packages locally on ftp server and Now other system within same network can install the pacakges from ftp server.

--- 
### SHARED FILESYSTEM
---
#### NFS 

On server side
Configure NFS on serverX as follow
- export /public directory with read only acess to desktopX machine.
On client side
Mount nfs on following Directory
- public Directory exported by ServerX should be mounted across reboot on /mnt/data

#### SAMBA

On server side
- Share /common directory via smb from your serverX
- Share name must be samba.
- Samba share must browseable.
- User natasha should have read access to it and authenticate with the password “postroll”.
- sarah should have read and write access to share and authenticate with the “postroll”.
