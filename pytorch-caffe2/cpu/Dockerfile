FROM ubuntu:16.04 

RUN sed -i 's/archive/tw.archive/g' /etc/apt/sources.list

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

RUN pip3 install -U pip==9.0.3 \ 
    && pip3 install -U \
    future \
    numpy \
    protobuf \
    pyyaml \
    && rm -rf ~/.cache/pip

RUN git clone --recursive https://github.com/pytorch/pytorch.git /tmp/pytorch \
    && (cd /tmp/pytorch \
    && python3 setup_caffe2.py install) \
    && rm -rf /tmp/*

RUN pip3 install http://download.pytorch.org/whl/cpu/torch-0.4.0-cp35-cp35m-linux_x86_64.whl \
    && pip3 install torchvision \
    && rm -rf ~/.cache/pip

RUN git clone --recursive https://github.com/onnx/onnx.git /tmp/onnx \
    && (cd /tmp/onnx \
    && python3 setup.py install) \
    && rm -rf /tmp/*
