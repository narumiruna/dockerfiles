FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu16.04

RUN apt-get update && apt-get install -y --no-install-recommends \
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
