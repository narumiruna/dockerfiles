ARG BASE_IMAGE=ubuntu:18.04
FROM $BASE_IMAGE

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    liblapack-dev \
    libopenblas-dev \
    pkg-config \
    python3-dev \
    python3-pip \
    python3-setuptools \
    && rm -rf /var/lib/apt/lists*

RUN pip3 install pip==9.0.3 \
    && pip3 install dlib \
    && rm -rf ~/.cache/pip

WORKDIR /workspace
