# Introduction
In this section we will try to understand various file permission, package management, cron and process management.

---
## Assignments
---

--- 
### FILE PERMISSION
---
#### Must Do
---

- Create a shell script for hello world with name ninja.sh via root user
- Verify the permission of ninja.sh
- Execute the script, if it didn't get executed give appropriate permissions for root user.
- Switch to normal user and execute ninja.sh, if it didn't get executed give appropriate ownership to user (do not change the owner of file)
- Move ninja.sh to a path variable use it as a binary ie invoke it from anywhere.

---
#### Good to Do
----

- Learn about SUID, SGID and sticky bit.
- And Set if for a dummy file.
- Explore how SUID, SGID is used for ***passwd***.


--- 
### PACKAGE MANAGEMENT
---
#### Must Do
---

* Locate and explore the directories containing repository definitions.
* Practice enabling and disabling epel repository in Centos system.
* Install httpd2.4/apache2.4 using its .rpm/.deb file.
* Use the package manager to install php7.2 and its dependencies.
* Use the package manager to uninstall php7.2 and its dependencies.
* Note packages and make a list of their dependencies, install and run them.
* Perform operations to find, view and remove the specific packages.

---
#### Good to Do
---

* Manipulate packages and repositories
* Installs portmaster and uses it to update installed ports.
* Install nodejs 10.x using source code.
* Install and setup MySQL 5.7 in non interactive mode.


--- 
### PROCESS MANAGEMENT
---
#### Must Do
---

- Display all the users processes
- Highlight running processes in top and sort the processes in descending order of CPU utilisation and close the application with  highest CPU utilisation.
- System is running multiple processes and among which one process is transferring files over the remote system, how do I will give this process the highest priority.
- Kill all the process of external users logged in to the system.
- Shows the child-parent hierarchy of all processes
- What are signals and List all of the signals that can be sent to a proccess
- List out the status of background jobs
- Resume (wake up) a suspended process with PID 6436 but keeps it running in the background
- Shows how long a particular process was running. 
- lists all open files belonging to processes owned by the user 
- Kill all process that belongs to a particular user
- Display the process ID numbers of the zombie processes.

---
#### Good to Do
---
-  List out all system calls used for process management and write a short description on it with the example on the implementation.

--- 
### CRON
---
#### Must Do
---

- Have clear understanding of all crontab fields.
- Create 2 users such that one user can setup cron and other can't.
- Create a file that holds the information whenever the system boots.
- Clear cache of your system every 2 hours between 10am to 8pm daily.
- Append current system timestamp in file every 15 seconds.

---
#### Good To Do
---

- Rotate system log file every 35 minutes using crontab.
- Send a broadcast message to all logged-in users every 2nd and 4th monday of a month at 3PM.
