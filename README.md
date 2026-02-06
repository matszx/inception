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
