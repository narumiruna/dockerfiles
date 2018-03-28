FROM nvidia/cuda:9.0-cudnn7-devel

LABEL maintainer="Narumi"

ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8

RUN sed -i 's/archive/tw.archive/g' /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    cmake \
    curl \
    git \
    libiomp-dev \
    libopenmpi-dev \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/intel/mkl-dnn.git /tmp/mkl-dnn \
    && (cd /tmp/mkl-dnn/scripts \
    && ./prepare_mkl.sh \
    && cd .. \
    && mkdir -p build \
    && cd build \
    && cmake .. \
    && make \
    && make install )\
    && rm -rf /tmp

RUN pip3 install -U pip \
    && pip3 install https://cntk.ai/PythonWheel/GPU/cntk_gpu-2.5-cp35-cp35m-linux_x86_64.whl \
    && rm -rf ~/.cache/pip

