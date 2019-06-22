FROM debian:stretch
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get dist-upgrade --yes
