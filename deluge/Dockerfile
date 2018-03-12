FROM ubuntu

ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8

COPY sources.list /etc/apt
RUN apt-get update && apt-get install -y \
    deluge \
    deluged \
    deluge-web \
    curl \
    unzip \
    man-db \
    python-pip \
    && rm -rf /var/lib/apt/lists/*

RUN curl https://rclone.org/install.sh | bash

RUN pip install -U pip \
    && pip install flexget \
    && rm -rf ~/.cache/pip

EXPOSE 8112
