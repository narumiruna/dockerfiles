FROM nvidia/cuda:8.0-cudnn6-devel

LABEL maintainer="Narumi"

RUN apt-get update &&\
    apt-get -y dist-upgrade &&\
    apt-get install -y locales \
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

RUN wget -q https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh -O /tmp/anaconda.sh &&\
    /bin/bash /tmp/anaconda.sh -b -p /opt/conda &&\
    rm /tmp/anaconda.sh

ENV PATH=/opt/conda/bin:$PATH

RUN conda update -yq --all &&\
    conda clean -tipsy &&\
    pip install -U pip &&\
    pip install -U tensorflow-gpu &&\
    rm -rf ~/.cache/pip &&\

WORKDIR /workspace
