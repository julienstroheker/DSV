#!/bin/bash

########################################
### https://github.com/mtlgo/DSV.git ###
########################################

docker swarm init --advertise-addr 10.0.0.10
docker swarm join-token -q worker > /vagrant/worker_token