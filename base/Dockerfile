FROM nvidia/cuda:8.0-cudnn6-runtime

LABEL maintainer="Narumi"

USER root

RUN apt-get update &&\
    apt-get -y dist-upgrade &&\
    apt-get install -y \
                       locales \
                       vim \
                       wget \
                       htop \
                       ssh \
                       git \
                       unzip &&\
    rm -rf /var/lib/apt/lists/*

RUN locale-gen en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8
