FROM nvidia/cuda:8.0-cudnn6-devel

LABEL maintainer="Narumi"

RUN apt-get update && \
    apt-get install -yq --no-install-recommends \
        python3-pip \
        python3-tk \
        locales \
        vim \
        wget \
        htop \
        iftop \
        ssh \
        git \
        unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

RUN pip3 install -U pip && \
    pip3 install -U \
        http://download.pytorch.org/whl/cu80/torch-0.3.0.post4-cp35-cp35m-linux_x86_64.whl \
        torchvision && \
    rm -rf ~/.cache/pip