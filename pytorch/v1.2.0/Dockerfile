FROM nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04

LABEL maintainer="Narumi"

ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update && apt-get install -y \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install torch torchvision \
    && rm -rf ~/.cache/pip

