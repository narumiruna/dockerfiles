FROM nvidia/cuda:9.0-cudnn7-devel

LABEL maintainer="Narumi"

ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8

RUN sed -i 's/archive/tw.archive/g' /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    cmake \
    git \
    libiomp-dev \
    libopenmpi-dev \
    python3-pip \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Install MKL-DNN
ENV MKL_DNN_VERSION 0.13
RUN (cd /tmp \
    && wget -q https://github.com/intel/mkl-dnn/archive/v${MKL_DNN_VERSION}.tar.gz \
    && tar -xvf v${MKL_DNN_VERSION}.tar.gz \
    && cd mkl-dnn-${MKL_DNN_VERSION}/scripts \
    && ./prepare_mkl.sh \
    && cd .. \
    && mkdir -p build \
    && cd build \
    && cmake .. \
    && make install) \
    && rm -rf /tmp

# Install CNTK
RUN pip3 install -U pip \
    && pip3 install https://cntk.ai/PythonWheel/GPU/cntk_gpu-2.5-cp35-cp35m-linux_x86_64.whl \
    && rm -rf ~/.cache/pip

