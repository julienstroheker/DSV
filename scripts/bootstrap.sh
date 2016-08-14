#!/bin/bash

##################################################
### https://github.com/julienstroheker/DSV.git ###
##################################################

# Update Environment
apt-get install linux-image-extra-$(uname -r) -y
apt-get install apt-transport-https ca-certificates -y
# Adding key in update the repo to add the lastest version of docker-engine
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
touch /etc/apt/sources.list.d/docker.list
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list
apt-get upgrade && apt-get update -y 
apt-get purge lxc-docker
apt-cache policy docker-engine
# Install Docker
apt-get install docker-engine -y
service docker start
# Running with sudo
groupadd docker
usermod -aG docker vagrant
#All GOOD