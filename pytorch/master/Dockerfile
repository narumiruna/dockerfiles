FROM nvidia/cuda:9.1-cudnn7-devel

LABEL maintainer="Narumi"

ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update && apt-get install -y \
    cmake \
    git \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install -U pip==9.0.3 \
    && pip3 install -U numpy \
    && pip3 install -U pyyaml \
    && pip3 install -U \
    git+https://github.com/pytorch/pytorch.git#egg=torch \
    git+https://github.com/pytorch/vision.git#egg=torchvision \
    && rm -rf ~/.cache/pip
