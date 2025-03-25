## Introduction

In this section we will try to understand Disk managemet, inode management, LVM and system resource management.

---
### Assignments
---
### DISK MANAGEMENT 
---
#### Must Do
---

- List all available disk devices on the system .
- Explore disk device names and where they exists on the filesystem.
- Use the fdisk partition tool to create two partitions on your pen drive.
- Mount those partitions persistently on the system.
- Add quota options to the mounted partitions.

---
#### Good to Do
---

- Create a user for assigning a disk quota.
- Configure quota on the intended filesystem.
- Create a soft and hard limit quota for space on the created use.
- Forcibly exceed those quotas and observe the results.
- Generate a quota report on system users.

--- 
### INODE MANAGEMENT
---
#### Must Do
---

- create a file File1 and found it's inode number
- change the inode no of File1
- change the permission of File1 and add some content in File1 using the inode no of File1
- find out the total no of inodes assigned to your file system
- create a directory dir_1,make a hard link and soft link of dir_1
- list out all the links of directory "/"

---
#### Good To Do
---

- checkout the inode usage of your filesystem if it's more than 50% then delete all the files whose size is less than 10 kb but before deleting the files copy the content of the files in final_data.log.
- now simulate this problem for a directory Sample_Dir which will act as our dummy file system.Sample_Dir will have multiple directories and all the directories will have multiple files of any size.
- write a script for this problem.

--- 
### Logical Volume Manager (LVM)
---
#### Must Do
---

- Crystal clear understandng of PV, VG and LV.
- Create LVM 2 partitions on Pen drive with space left for two more to create.
- Create physical volumes of the 3 partitions created.
- Create volume group of the physical volumes.
- Create logical volumes and mount on system persistently.
- Extend the LVM partition created earlier.

---
#### Good to Do
---

- Reduce the LVM partition created earlier.
- Take snaphot of LVM and restore it

--- 
### SYSTEM RESOURCE MANAGEMENT
---
#### Must Do
---

- Run a program with modified scheduling priority.
- Print network connections, routing tables, interface statistics, masquerade connections, and multicast memberships.
- Check System Load Average.
- Report a snapshot of the current processes.
- Display system tasks.
- Create a user for assigning a disk quota.
- List all available disk devices on the system .
- Display virtual memory statistics

---
#### Good to Do
---

- check the ram used by the system if the ram exceeds by 40% then Stop the process which has maximum disk utilization.
- Investigate information about successful logins and tracks the activities of valid users.
