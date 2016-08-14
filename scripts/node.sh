#!/bin/bash

########################################
### https://github.com/mtlgo/DSV.git ###
########################################

TOKEN=`cat /vagrant/worker_token`
docker swarm join --token=$TOKEN 10.0.0.10:2377