FROM alpine:latest

LABEL maintainer="Mikael Lognseth <mikael.lognseth@skaylink.com>"

RUN apk update
RUN apk add --update iproute2 bind-tools curl openssl nmap nmap-scripts tcpdump iputils busybox-extras mariadb-client redis postgresql-client mysql-client
CMD ["sh"]
