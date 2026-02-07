FROM debian:bookworm
ARG CERT_PATH CERT_CRT CERT_KEY
RUN apt update && apt upgrade -y && apt install -y nginx openssl
RUN mkdir -p ${CERT_PATH}
RUN openssl req -x509 -nodes -days 30 \
-newkey rsa:2048 \
-keyout ${CERT_PATH}/${CERT_KEY} \
-out ${CERT_PATH}/${CERT_CRT} \
-subj "/C=BE/ST=BX/L=Brussels/O=42/CN=localhost"
RUN chmod 600 ${CERT_PATH}/${CERT_KEY} && chmod 644 ${CERT_PATH}/${CERT_CRT}
COPY conf/nginx.conf /etc/nginx/sites-available/default
ENTRYPOINT ["nginx", "-g", "daemon off;"]
