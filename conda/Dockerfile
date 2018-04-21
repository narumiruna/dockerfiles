FROM ubuntu:16.04

LABEL maintainer="Narumi"

ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update && apt-get install -y --no-install-recommends \
    bzip2 \
    ca-certificates \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN wget -q https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O conda.sh \
    && sh conda.sh -b -p /opt/conda \
    && rm conda.sh

ENV PATH=/opt/conda/bin:$PATH
