FROM alpine:latest

LABEL maintainer="Mikael Lognseth <mika@lognseth.io"

RUN apk update
RUN apk add --update iproute2 bind-tools curl openssl nmap nmap-scripts tcpdump iputils busybox-extras mariadb-client redis postgresql-client mysql-client postgresql-client
CMD ["sh"]
