FROM debian:buster-slim
ENV DEBIAN_FRONTEND noninteractive
RUN echo "deb http://deb.debian.org/debian buster main\ndeb-src http://deb.debian.org/debian buster main\ndeb http://security.debian.org/debian-security buster/updates main\ndeb-src http://security.debian.org/debian-security buster/updates main\ndeb http://deb.debian.org/debian buster-updates main\ndeb-src http://deb.debian.org/debian buster-updates main" > /etc/apt/sources.list

RUN apt-get update && apt-get dist-upgrade --yes && \
apt-get autoremove && \
apt-get clean