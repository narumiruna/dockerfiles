FROM nvidia/cuda:8.0-cudnn6-devel

LABEL maintainer="Narumi"

ENV LANG=C.UTF-8 \
    LANGUAGE=C.UTF-8 \
    LC_ALL=C.UTF-8

RUN apt-get update && \
    apt-get install -yq --no-install-recommends \
        ca-certificates \
        wget \
        git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN wget -q https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /conda.sh && \
    sh /conda.sh -b -p /opt/conda && \
    rm /conda.sh

ENV PATH=/opt/conda/bin:$PATH

RUN conda install --yes --quiet \
        numpy \
        pyyaml \
        mkl \
        setuptools \
        cmake \
        cffi && \
    conda clean -tipsy

RUN pip install -U git+https://github.com/pytorch/pytorch.git#egg=torch && \
    pip install -U git+https://github.com/pytorch/vision.git#egg=torchvision

