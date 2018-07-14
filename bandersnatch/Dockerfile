FROM ubuntu:16.04

LABEL maintainer="Narumi"

ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8

RUN echo 'deb mirror://mirrors.ubuntu.com/mirrors.txt xenial main restricted universe multiverse' > /etc/apt/sources.list \
    && echo 'deb mirror://mirrors.ubuntu.com/mirrors.txt xenial-updates main restricted universe multiverse' >> /etc/apt/sources.list \
    && echo 'deb mirror://mirrors.ubuntu.com/mirrors.txt xenial-backports main restricted universe multiverse' >> /etc/apt/sources.list \
    && echo 'deb mirror://mirrors.ubuntu.com/mirrors.txt xenial-security main restricted universe multiverse' >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install -U pip==9.0.3 \
    && pip3 install -U bandersnatch \
    && rm -rf ~/.cache/pip

COPY default.conf /etc/bandersnatch.conf

VOLUME /srv/pypi

CMD [ "bandersnatch", "mirror" ]