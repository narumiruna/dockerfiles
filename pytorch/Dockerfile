FROM nvidia/cuda:8.0-cudnn6-devel

LABEL maintainer="Narumi"

ENV LANG=C.UTF-8 \
    LANGUAGE=C.UTF-8 \
    LC_ALL=C.UTF-8

RUN sed -i 's/archive/tw.archive/g' /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -yq --no-install-recommends \
        python3-pip \
        python3-setuptools && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install -U pip && \
    pip3 install -U http://download.pytorch.org/whl/cu80/torch-0.3.0.post4-cp35-cp35m-linux_x86_64.whl \
                    torchvision && \
    rm -rf ~/.cache/pip
