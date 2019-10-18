# change password
passwd



# update and upgrade system
apt-get update && apt-get upgrade



# install GUI
sudo apt install xfce4
# start GUI
sudo startx



# install ifconfig
apt install net-tools



# SVN
sudo apt install subversion
# Change timezone
sudo dpkg-reconfigure tzdata
date



# Remove directory with files
rm -r <folder_name>



# install pip for python3.6
sudo apt install curl
sudo apt-get install python3-distutils
wget https://bootstrap.pypa.io/get-pip.py
sudo python3.6 get-pip.py



# Install MySQL
sudo apt update
sudo apt install mysql-server
sudo mysql_secure_installation
# create schema dumps
mysqldump -u root -p <schema_name|--allatabase> > <file_name>.sql

# new db on server 2
# upload
mysqldump --databases db1 > dump.sql -u root -p
# download
mysql < dump.sql -u root -p




# systemd
/etc/systemd/system/NAME.service 
sudo systemctl daemon-reload
sudo systemctl enable sitbot.service
sudo systemctl start sitbot.service

