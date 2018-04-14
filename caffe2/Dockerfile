FROM nvidia/cuda:9.0-cudnn7-runtime

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    libgflags-dev \
    libgoogle-glog-dev \
    libgtest-dev \
    libiomp-dev \
    libleveldb-dev \
    liblmdb-dev \
    libopencv-dev \
    libopenmpi-dev \
    libprotobuf-dev \
    libsnappy-dev \
    openmpi-bin \
    openmpi-doc \
    protobuf-compiler \
    python3-dev \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install -U pip \
    && pip3 install -U \
    future \
    numpy \
    protobuf \
    && rm -rf ~/.cache/pip

RUN ( cd /tmp \
    git clone --recursive https://github.com/pytorch/pytorch.git && cd pytorch \
    && git submodule update --init \
    && mkdir build && cd build \
    && cmake .. \
    && make install ) \
    && rm -rf /tmp/*
