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

If there is no srcs/.env you must create it with this template
>	EMAIL=lambda@student.42belgium.be # modify  
>	URL=lambda.42.fr # modify  
>	  
>	CERT_PATH=/etc/nginx/ssl  
>	CERT_CRT=cert.crt  
>	CERT_KEY=cert.key  
>	  
>	WP_ADMIN=XXX # modify  
>	WP_ADMIN_PWD=XXX # modify  
>	WP_USER=XXX # modify  
>	WP_USER_PWD=XXX # modify   
>	
>	DB_NAME=my_database  
>	DB_HOST=mariadb  
>	DB_USER=XXX # modify  
>	DB_USER_PWD=XXX # modify  
