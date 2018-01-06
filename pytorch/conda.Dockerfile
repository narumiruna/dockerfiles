FROM nvidia/cuda:8.0-cudnn6-devel

LABEL maintainer="Narumi"

RUN apt-get update &&\
    apt-get -y dist-upgrade &&\
    apt-get install -y python3-pip \
                       python3-tk \
                       locales \
                       vim \
                       wget \
                       htop \
                       ssh \
                       git \
                       unzip &&\
    rm -rf /var/lib/apt/lists/*

RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

WORKDIR /tmp
RUN wget -q https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh -O /tmp/anaconda.sh &&\
    /bin/bash /tmp/anaconda.sh -b -p /opt/conda &&\
    rm /tmp/anaconda.sh

# COPY requirements.txt /tmp
# RUN pip3 install -U pip &&\
#     pip3 install -U -r requirements.txt &&\
#     rm -rf ~/.cache/pip &&\
#     rm /tmp/requirements.txt

# WORKDIR /workspace