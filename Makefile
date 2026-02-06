all: build

dir:
	@mkdir -p /home/mcygan/data/web /home/mcygan/data/db 

build: dir
	docker compose -f ./srcs/docker-compose.yml up --build -d

up:
	docker compose -f ./srcs/docker-compose.yml up -d

down:
	docker compose -f ./srcs/docker-compose.yml down

stop:
	docker compose -f ./srcs/docker-compose.yml stop

start:
	docker compose -f ./srcs/docker-compose.yml start

status:
	docker ps

