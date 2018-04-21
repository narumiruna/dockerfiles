FROM nvidia/cuda:9.0-cudnn7-devel

LABEL maintainer="Narumi"

ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    libavcodec-dev \
    libavformat-dev \
    libdc1394-22-dev \
    libgtk2.0-dev \
    libjasper-dev \
    libjpeg-dev \
    libpng-dev \
    libswscale-dev \
    libtbb-dev \
    libtbb2 \
    libtiff-dev \
    pkg-config \
    python3-dev \
    python3-numpy \
    python3-pip \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Install OpenCV
WORKDIR /tmp
ENV OPENCV_VERSION 3.4.1
RUN wget --quiet -O- https://github.com/opencv/opencv/archive/${OPENCV_VERSION}.tar.gz | tar -xz
RUN wget --quiet -O- https://github.com/opencv/opencv_contrib/archive/${OPENCV_VERSION}.tar.gz | tar -xz

WORKDIR /tmp/opencv-${OPENCV_VERSION}/build
RUN cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-${OPENCV_VERSION}/modules \
    -DBUILD_opencv_python3=ON \
    -DPYTHON3_EXECUTABLE=$(which python3) \
    -DWITH_CUDA=OFF \
    ..
RUN make -j$(nproc) install

WORKDIR /
RUN rm -rf /tmp/*
