# DEV GUIDE

## Prerequisites

### Add Docker's official GPG key
>	sudo apt update  
	sudo apt install ca-certificates curl  
	sudo install -m 0755 -d /etc/apt/keyrings  
	sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc  
	sudo chmod a+r /etc/apt/keyrings/docker.asc  

### Add the repository to apt sources
>	sudo tee /etc/apt/sources.list.d/docker.sources <<EOF  
	Types: deb  
	URIs: https://download.docker.com/linux/debian  
	Suites: $(. /etc/os-release && echo "$VERSION_CODENAME")  
	Components: stable  
	Signed-By: /etc/apt/keyrings/docker.asc  
	EOF  

### Update apt
>	sudo apt update

### Install Docker packages
>	sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

## Managing credentials

All credentials are stored in srcs/.env
To modify a credential just modify the appropriate value

## Building and launching

Refer to USER_DOC

## Additional commands

All of those are to be run in the same directory as docker-compose.yml (or the appropriate flag)

Launch a specific container
>	docker compose up *<container_name>*

Stop a specific container
>	docker compose stop *<container_name>*

List running containers
>	docker ps

To see volumes
>	docker volume ls

To delete volume or container
>	docker rm *<name>*

Open shell inside a container
>	docker exec -it *<container_name>* sh

Fetch logs
>	docker logs -f *<container_name>*

For help
>	docker --help

## Data storage

Wordpress data is stored in
>	/home/mcygan/data/web

MariaDB data is stored in
>	/home/mcygan/data/db

All data in those folders persists, even after all the containers have been deleted system rebooted  
It can also be deleted to restore default configuration
