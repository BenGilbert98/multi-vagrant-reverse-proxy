# Multi Vagrant Machine Task (Reverse Proxy)

## Intro
This repo is for a multi vagrant machine which will run on port 80.

## Pre-requisites
- Install Vagrant
- Install VirtualBox

## Instructions
To work in this box:
1. Clone the repo into your chosen location
2. Inside bash navigate to the location where the cloned repo is and type the following command

```bash
vagrant up
```
3. The code in the provisions.sh file should mean that this is the only command you will need to run

### Website locations
The website will run on the following urls
- 192.168.10.100
- 192.168.10.100/fibonacci/{your chosen number}
- 192.168.10.100/posts
## test