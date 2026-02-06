*This project has been created as part of the 42 curriculum by mcygan*

# Inception
## Description
A project that dives deep into containers and virtualization\
The goal is to get a local server running with Docker images of Nginx, Wordpress and MariaDB

## Instructions
Runs on a Debian 12 only

Commands:
- make ➡ build and launch
- make build ➡ build images
- make up ➡ launch containers
- make stop ➡ pause containers
- make start ➡ resume containers
- make down ➡ stop containers & delete images
- make status ➡ show running containers

## Resources
### Links to get started
https://docs.docker.com/get-started/   
https://www.howtogeek.com/733522/docker-for-beginners-everything-you-need-to-know/  
https://medium.com/@ssterdev/inception-guide-42-project-part-i-7e3af15eb671  
https://medium.com/@ssterdev/inception-42-project-part-ii-19a06962cf3b  
### AI use
AI was used for assist with the initial VM setup, final review of some files and to occasionally track down some subtle hard-to-spot issues

## VM vs Docker
| Virtual machine | Docker |
|:---------------:|:------:|
| Resource-hungry | Lightweight |
| Long boot up | Fast boot up |
| Dedicated storage | Flexible storage |
| Hard to scale & deploy | Easy to scale & deploy |

## Secrets vs environment variables
| Secrets | env variables |
|:-------:|:-------------:|
| Encrypted at rest | Plain text |
| Complex | Easy to implement |
| Only work in Docker Swarm | Work in any container

## Host network vs Docker network
| Host | Docker |
|:----:|:------:|
| No isolation | Isolated from host |
| No port mapping needed | Needs to expose ports to interact with host |
| Can cause conflicts | Containers are standalone |

## Docker volumes vs Bind mounts
| Volume | Bind mount |
|:------:|:----------:|
| Managed by Docker | Self-managed |
| Uses default path | Allows to specify path |
| Doesn't need permissions | Needs permissions | 
