#!/bin/bash

# Update the sources list
sudo apt-get update -y

# install git
sudo apt-get install git -y

# install nodejs
sudo apt-get install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g

# Install nginx
sudo apt-get install nginx -y

# Removes the default file from /etc/nginx/sites-available/default
sudo rm /etc/nginx/sites-available/default

# Copies the port80.default file from our folder to the /etc/nginx/sites-available location
sudo cp /home/ubuntu/environment/port80.default /etc/nginx/sites-available/default

# Restart the nginx service to make sure the changes take effect
sudo systemctl restart nginx.service

# .bashrc envrionment variable added from db
echo 'export DB_HOST=192.168.10.200' >> ~/.bashrc

# Navigate to /home/ubuntu/app
cd /home/ubuntu/app

# Start the app with admin rights
sudo pm2 start app.js --update-env
