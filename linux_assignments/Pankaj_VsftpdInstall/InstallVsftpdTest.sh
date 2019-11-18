#!/bin/bash

function installFTP() {

DISTRO=sudo cat /etc/os-release | grep -i  "^ID=" 
if [ -n "(echo $DISTRO | grep ubuntu)" ]
then
        echo "Versions of vsftpd available on system are"
        LIST=sudo apt list vsftpd
        echo $LIST
        read -p "Enter the version you want to install: " VERS
        sudo apt install vsftpd=$VERS
	Allow
	MyUser
	AppendConfigUbuntu
elif [ -n "(echo $DISTRO | grep centos)" ]

then
        echo "Versions of vsftpd available on system are"
        sudo yum --showduplicates list vsftpd
        read -p "Enter the version you want to install: " VERS
        sudo yum install vsftpd-$VERS
else
        echo "Distribution not supported"
	UserCentOs
	AppendConfigCentOs
fi

}
function Allow() {
# allowing firewall
sudo ufw allow 20/tcp
sudo ufw allow 21/tcp
sudo ufw allow 990/tcp
sudo ufw allow 4000:5000/tcp
}

function MyUser(){
read -p 'Enter ftp user name :' USERNAME
export $USERNAME
if [ -z $USERNAME ]
then
	echo "No Username Provided. Program will take a default username"
	$USERNAME='ftpuser'
else
	echo "$USERNAME given"
fi
	sudo adduser --home=/home/$USERNAME/ftp $USERNAME	
	sudo chown nobody:nogroup /home/$USERNAME/ftp
	sudo chmod a-w /home/$USERNAME/ftp 
	echo "$USERNAME" | sudo tee -a /etc/vsftpd.userlist
}
function UserCentOs(){
read -p 'Enter ftp user name :' USERNAME
echo -n 'Password :'
read -s PASSWORD
if [ -z $USERNAME ]
then
        echo "No Username Provided. Program will take a default username"
        $USERNAME='ftpuser'
else
        echo "$USERNAME given"
fi
	sudo adduser -m -s /bin/bash $USERNAME
 	sudo passwd $PASSWORD
	echo "$USERNAME" | tee -a /etc/vsftpd.userlist
	
}

function AppendConfigUbuntu() {
if [ -f '/etc/vsftpd.conf' ]
then

	echo "This block will change /etc/vsftpd.conf file in ubuntu"
	#Copy file in some source to save it for future
	sudo cp /etc/vsftpd.conf /etc/vsftpd.conf.orig
	sudo sed -i 's/^\#write_enable=YES/write_enable=YES/1g' /etc/vsftpd.conf
	sudo sed -i 's/^\#chroot_local_user=YES/chroot_local_user=YES/1g' /etc/vsftpd.conf
	sudo sed -i 's/^\#local_umask=022/local_umask=022/1g' /etc/vsftpd.conf
	echo "
	user_sub_token=$USERNAME \/n
	local_root=/home/$USERNAME/ftp \/n 
	pasv_min_port=40000 \/n
	pasv_max_port=50000\/n
	userlist_enable=YES \/n
	userlist_file=/etc/vsftpd.userlist\/n
	userlist_deny=NO" | sudo tee -a /etc/vsftpd.conf
	sudo systemctl restart vsftpd
else
	echo "Installation Error /etc/vsftpd.conf File not Found.
       	Please Try to run script again. check Network connection if problem persists"
fi
}
function AppendConfigCentOs(){
if [ -f '/etc/vsftpd.conf' ]
then

        echo "This block will change /etc/vsftpd.conf file in ubuntu"
        #Copy file in some source to save it for future
        sudo cp /etc/vsftpd/vsftpd.conf /etc/vsftpd.conf.orig
        sudo sed -i 's/^\#write_enable=YES/write_enable=YES/1g' /etc/vsftpd.conf
        sudo sed -i 's/^\#chroot_local_user=YES/chroot_local_user=YES/1g' /etc/vsftpd.conf
        sudo sed -i 's/^\#local_umask=022/local_umask=022/1g' /etc/vsftpd.conf
        echo "
        user_sub_token=$USERNAME \/n
        local_root=/home/$USERNAME/ftp \/n 
        pasv_min_port=40000 \/n
        pasv_max_port=50000\/n
        userlist_enable=YES \/n
        userlist_file=/etc/vsftpd.userlist\/n
        userlist_deny=NO" | sudo tee -a /etc/vsftpd.conf
        sudo systemctl restart vsftpd
	sudo enable vsftpd
	firewall-cmd --permanent --add-port=21/tcp
	firewall-cmd --zone=public --permanent --add-service=ftp
	firewall-cmd --reload
else
        echo "Installation Error /etc/vsftpd.conf File not Found.
        Please Try to run script again. check Network connection if problem persists"
fi
}


#run the function
installFTP

