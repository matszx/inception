FROM debian:bookworm
RUN apt update && apt upgrade -y && apt install -y nginx openssl
RUN mkdir -p /etc/nginx/ssl/certs
RUN openssl req -x509 -nodes -days 30 \
-newkey rsa:2048 \
-keyout /etc/nginx/ssl/certs/cert.key \
-out /etc/nginx/ssl/certs/$cert.crt \
-subj "/C=BE/ST=BX/L=Brussels/O=42/CN=localhost"
RUN chmod 600 /etc/nginx/ssl/certs/cert.key && chmod 644 /etc/nginx/ssl/certs/cert.crt
COPY conf/nginx.conf /etc/nginx/sites-available/default
ENTRYPOINT ["nginx", "-g", "daemon off;"]
