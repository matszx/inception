FROM debian:bookworm
RUN apt update && apt upgrade -y && apt install -y mariadb-server
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/.
RUN mkdir /run/mysqld
COPY tools/mariadb-setup.sh .
RUN chmod +x ./mariadb-setup.sh
ENTRYPOINT ["./mariadb-setup.sh"]

