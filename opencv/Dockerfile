FROM nvidia/cuda:9.0-cudnn7-devel

LABEL maintainer="Narumi"

ENV LANG=C.UTF-8 \
    LANGUAGE=C.UTF-8 \
    LC_ALL=C.UTF-8

COPY sources.list /etc/apt

RUN apt-get update && \
    apt-get install -y \
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
        python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/opencv/opencv.git /tmp/opencv && \
    git clone https://github.com/opencv/opencv_contrib.git /tmp/opencv_contrib && \
    mkdir -p /tmp/opencv/build && \
    ( \
        cd /tmp/opencv/build && \
        cmake \
            -DCMAKE_BUILD_TYPE=Release \
            -DCMAKE_INSTALL_PREFIX=/usr/local \
            -DOPENCV_EXTRA_MODULES_PATH=/tmp/opencv_contrib/modules \
            -DBUILD_opencv_python3=ON \
            -DPYTHON3_EXECUTABLE=$(which python3) \
            -DWITH_CUDA=OFF \
            /tmp/opencv && \
        make install -j4 \
    ) && \
    rm -rf /tmp/*