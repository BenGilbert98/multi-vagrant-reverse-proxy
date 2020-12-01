# Multi Vagrant Machine Task (Reverse Proxy)

## Intro
This repo is for a multi vagrant machine which will run on port 80.

## Pre-requisites
- Clone the Github repo
- Install Vagrant
- Install VirtualBox

## Acceptance Criteria

* Uses vagrant file
* Localhost set to development.local (unless you computer can't handle this)
* port 80 has App running (you see the sparta logo on development.local)
* Work with only command "vagrant up" &/or mininum commands 

* Documentation exists as README.md file 
* Documentation includes: Intro (purpose of repo), Pre Requisits  and Intructions
* Instructions have a clear step by step

* repo exists on github


## Instructions
To work in this box:
1. Clone the repo into your chosen location.
2. Inside bash or your terminal, navigate to the location where the cloned repo is and type the following command.

```bash
vagrant up
```
3. The code in the provisions.sh file should mean that this is the only command you will need to run.

### Website locations
The website will run on the following urls
- 192.168.10.100
- 192.168.10.100/fibonacci/{your chosen number} (Currently if the number is too high this will break the app)

## Known Issues
- The number entered in the fibonacci page is too high, the app must be restarted using the steps below.
    1) Enter the virtual environment with ```vagrant ssh app```
    2) Navigate to the /home/ubuntu/app folder with ```cd /home/ubuntu/app```
    3) Enter the following command ```sudo pm2 restart app.js```

- The app cannot connect on launch, the app must be manually started within the virtual envrionment
    1) Enter the virtual environment with ```vagrant ssh app```
    2) Navigate to the /home/ubuntu/app folder with ```cd /home/ubuntu/app```
    3) Enter the following command ```sudo pm2 start app.js --update-env```

- Currently the posts page does not load, this is still being worked on. 