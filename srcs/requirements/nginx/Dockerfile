FROM debian:bookworm
RUN apt update && apt upgrade -y && apt install -y nginx openssl
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 30 \
-newkey rsa:2048 \
-keyout /etc/nginx/ssl/cert.key \
-out /etc/nginx/ssl/cert.crt \
-subj "/C=BE/ST=BX/L=Brussels/O=42/CN=localhost"
RUN chmod 600 /etc/nginx/ssl/cert.key && chmod 644 /etc/nginx/ssl/cert.crt
COPY conf/nginx.conf /etc/nginx/sites-available/default
ENTRYPOINT ["nginx", "-g", "daemon off;"]
