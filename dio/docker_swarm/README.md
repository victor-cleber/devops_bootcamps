# AWS DevOps - DIO / Impulso

## Docker Swarm Vagrant

Docker Swarm is a container orchestration solution that transforms multiple physical (or virtual) hosts into a single cluster behaving like a one Docker host.

Docker Swarm makes easy to manage and scale your existing Docker infrastructure allowing you to create orchestrate services with automatic load balancing for exposed ports.

## The project

In this project we use Vagrantfile to configure Docker Swarm with 03 nodes: manager, worker1, worker2. You can adjust how many workers you want in the Vagrantfile, by adding a new machine at the machines  definition. Manager, by default, has address "192.168.56.100", and the workers have consecutive ips.

## Technologies

| Tool                         | Version                                              |
| :----------------------------- | :------------------------------------------------------- |
| [Docker]()     | version 24.0.7, build afdd53b  |
| [Docker-compose]()            | version 24.0.7, build afdd53b       |
| [Vagrant]()     | 2.40  |
|[Boxes]() | BentoBoxes/ubuntu-22.04 |

[X] create 03 VMs<br>
[X] install docker<br>
[X] setup master<br>
[ ] share the docker swarm command using /vagrant shared folder<br>
[ ] setup worker usin the /vagrant shared folder<br>
[ ] run a docker app automatically<br>
[ ] workers can not read the docker swarm command using /vagrant shared folder<br>
[ ] Error response from daemon: rpc error: code = Unavailable desc = connection error: desc = "transport: Error while dialing dial tcp 192.168.56.100:2377: connect: protocol not available"<br>
[ ] deploy a Highly Available NGINX service<br>
