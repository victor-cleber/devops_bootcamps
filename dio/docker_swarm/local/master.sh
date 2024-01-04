#!/bin/bash
sudo docker swarm init --advertise-addr=192.168.56.100 --listen-addr=192.168.56.100:2377
sudo docker swarm join-token worker | grep docker > /data/worker.sh