# AWS DevOps - DIO / Impulso

## Docker Swarm Vagrant

Docker Swarm is a container orchestration solution that transforms multiple physical (or virtual) hosts into a single cluster behaving like a one Docker host.

Docker Swarm makes easy to manage and scale your existing Docker infrastructure allowing you to create orchestrate services with automatic load balancing for exposed ports.

Swarm uses the [Raft consensus algorithm](http://thesecretlivesofdata.com/raft/) to manage cluster state. Swarm can tolerate `(N-1)/2` failures and needs `(N/2)+1` nodes to agree on values.

## The project
In this project we use Vagrantfile to configure Docker Swarm with 03 nodes: manager, worker1, worker2. You can adjust how many workers you want in the Vagrantfile, by adding a new machine at the machines  definition. Manager, by default, has address "192.168.56.100", and the workers have consecutive ips.

Docker Docker version 24.0.7, build afdd53b
Docker-compose docker-compose version 1.25.4, build 8d51620a
Docker Swarm
Vagrant 2.40
Bento Boxes/ubuntu-22.04

[X] create 03 VMs
[X] install docker
[X] setup master
[ ] share the docker swarm command using /vagrant shared folder
[ ] setup worker usin the /vagrant shared folder
[ ] run a docker app automatically
[ ] workers can not read the docker swarm command using /vagrant shared folder
[ ] Error response from daemon: rpc error: code = Unavailable desc = connection error: desc = "transport: Error while dialing dial tcp 192.168.56.100:2377: connect: protocol not available"
[ ] deploy a Highly Available NGINX service
