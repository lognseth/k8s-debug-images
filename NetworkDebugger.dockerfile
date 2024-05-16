FROM alpine:latest

LABEL maintainer="Mikael Lognseth <mika@lognseth.io"

RUN apk update
RUN apk add --update iproute2 bind-tools curl openssl nmap nmap-scripts tcpdump iputils busybox-extras mariadb-client redis postgresql-client mysql-client postgresql-client 
RUN apk add --update docker openrc
RUN rc-update add docker boot
RUN apk add gcc musl-dev python3-dev libffi-dev openssl-dev cargo make
RUN pip install --upgrade pip
RUN pip install azure-cli
CMD ["sh"]
