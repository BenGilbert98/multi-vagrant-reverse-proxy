#!/bin/bash

# Update the sources list
sudo apt-get update -y

# install git
sudo apt-get install git -y


# #read changes just made to bash rc using current process not child
# source ~/.bashrc

# install nodejs
sudo apt-get install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g

sudo apt-get install nginx -y

# finally, restart the nginx service so the new config takes hold
sudo unlink /etc/nginx/sites-enabled/default
sudo cp /home/vagrant/configs/port80.conf /etc/nginx/sites-available/port80.conf
sudo systemctl restart nginx.service

#make changes to .bashrc
echo 'export DB_HOST=192.168.10.200' >> ~/.bashrc

# Starts app
cd /home/ubuntu/app
sudo pm2 start app.js --update-env
