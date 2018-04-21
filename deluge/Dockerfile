FROM ubuntu

ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8

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

RUN pip install -U pip==9.0.3 \
    && pip install flexget \
    && rm -rf ~/.cache/pip

EXPOSE 8112
