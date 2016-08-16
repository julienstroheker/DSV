#!/bin/bash

##################################################
### https://github.com/julienstroheker/DSV.git ###
##################################################

# Open the remote API on port 4243
service docker stop
sed -i '38s|DOCKER_OPTS=|DOCKER_OPTS="-H tcp://0.0.0.0:4243 -H unix:///var/run/docker.sock"|1' /etc/init/docker.conf
service docker start
# Wait before to launch the docker swarm command
sleep 5s

# Create the Swarm Cluster
docker swarm init --advertise-addr 10.0.0.10
docker swarm join-token -q worker > /vagrant/wtoken
docker swarm join-token -q manager > /vagrant/mtoken

