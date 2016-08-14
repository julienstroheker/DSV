#!/bin/bash

##################################################
### https://github.com/julienstroheker/DSV.git ###
##################################################

TOKEN=`cat /vagrant/wtoken`
docker swarm join --token=$TOKEN 10.0.0.10:2377