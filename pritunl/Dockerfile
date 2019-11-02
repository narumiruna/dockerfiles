FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    ca-certificates \
    gnupg \
    iptables \
    && rm -rf /var/lib/apt/lists/*

RUN echo 'deb https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse' > /etc/apt/sources.list.d/mongodb-org-4.0.list \
    && echo 'deb http://repo.pritunl.com/stable/apt bionic main' > /etc/apt/sources.list.d/pritunl.list \
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 9DA31620334BD75D9DCB49F368818C72E52529D4 \
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A

RUN apt-get update && apt-get install -y \
    mongodb-org \
    pritunl \
    && rm -rf /var/lib/apt/lists/* 

RUN mkdir -p /data/db
CMD mongod & pritunl
