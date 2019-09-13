FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

ARG PYTHON_VERSION=3.7.4
ARG TORCH_VERSION=v1.2.0
ARG TORCHVISION_VERSION=v0.4.0
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    cmake \
    curl \
    git \
    libbz2-dev \
    libffi-dev \
    libjpeg-dev \
    liblzma-dev \
    libncurses5-dev \
    libpng-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    libxml2-dev \
    libxmlsec1-dev \
    llvm \
    make \
    tk-dev \
    xz-utils \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

RUN curl -s https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz | tar -xz \
    && cd Python-${PYTHON_VERSION} \
    && ./configure \
    && make -j$(nproc) install \
    && cd .. \
    && rm -rf Python-${PYTHON_VERSION}

RUN pip3 install -U future numpy pyyaml requests setuptools six typing \
    && TORCH_CUDA_ARCH_LIST="3.5 5.2 6.0 6.1 7.0+PTX" \
    TORCH_NVCC_FLAGS="-Xfatbin -compress-all" \
    CMAKE_PREFIX_PATH="$(dirname $(which python3))/../" \
    pip3 install -v -U git+https://github.com/pytorch/pytorch.git@${TORCH_VERSION}#egg=torch \
    && pip3 install -v -U git+https://github.com/pytorch/vision.git@${TORCHVISION_VERSION}#egg=torchvision \
    && rm -rf ~/.cache/pip
