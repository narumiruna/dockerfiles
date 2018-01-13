FROM nvidia/cuda:9.0-cudnn7-devel

LABEL maintainer="Narumi"

RUN apt-get update &&\
    apt-get -y dist-upgrade &&\
    apt-get install -y locales \
                       vim \
                       wget \
                       htop \
                       ssh \
                       git \
                       unzip &&\
    rm -rf /var/lib/apt/lists/*

RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

# RUN wget -q https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh \
#          -O /tmp/miniconda.sh &&\
#     /bin/bash /tmp/miniconda.sh -b -p /opt/conda &&\
#     rm /tmp/miniconda.sh

RUN wget -q https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh \
         -O /tmp/anaconda.sh &&\
    /bin/bash /tmp/anaconda.sh -b -p /opt/conda &&\
    rm /tmp/anaconda.sh

ENV PATH=/opt/conda/bin:$PATH

RUN conda update -yq --all &&\
    conda install -yq numpy \
                      pyyaml \
                      mkl \
                      setuptools \
                      cmake \
                      cffi &&\
    conda install -yq -c pytorch magma-cuda90 &&\
    conda clean -tipsy

RUN git clone --recursive https://github.com/pytorch/pytorch.git /tmp/pytorch
WORKDIR /tmp/pytorch
RUN python setup.py install

WORKDIR /workspace
