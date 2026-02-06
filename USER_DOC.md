# USER GUIDE

## Start and stop the project

Build images & launch containers
>	make

Pause containers
>	make stop

Resume containers
>	make start

Stop containers ans delete images
>	make down

## See what services are provided by the stack

See running containers
>	make status

A list of implemented services is available in srcs/docker_compose.yml (following "container_name")

## Website and admin panel access

The website can be accessed at either of those URLs
>	https://localhost  
>	https://mcygan.42.fr

To access the admin panel
>	https://localhost/wp-admin  
>	https://mcygan.42.fr/wp-admin

## Credentials

All credentials are stored in srcs/.env

To modify a credential you must change the appropriate value and rebuild the project for changes to take effect
