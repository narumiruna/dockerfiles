FROM nvidia/cuda:9.0-cudnn7-devel

LABEL maintainer="Narumi"

ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8

RUN sed -i 's/archive/tw.archive/g' /etc/apt/sources.list

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
ENV OPENCV_VERSION 3.4.1
ENV OPENCV_CONTRIB_VERSION 3.4.1

RUN (cd /tmp \
    && wget --quiet -O- https://github.com/opencv/opencv/archive/${OPENCV_VERSION}.tar.gz | tar -xz \
    && wget --quiet -O- https://github.com/opencv/opencv_contrib/archive/${OPENCV_CONTRIB_VERSION}.tar.gz | tar -xz \
    && mkdir -p opencv-${OPENCV_VERSION}/build \
    && cd opencv-${OPENCV_VERSION}/build \
    && cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-${OPENCV_CONTRIB_VERSION}/modules \
    -DBUILD_opencv_python3=ON \
    -DPYTHON3_EXECUTABLE=$(which python3) \
    -DWITH_CUDA=ON \
    .. \
    && make -j$(nproc) install) \
    && rm -rf /tmp/*

# Install darkflow
RUN pip3 install -U pip==9.0.3 && \
    pip3 install -U \
    tensorflow==1.5.0 \
    cython && \
    pip3 install git+https://github.com/thtrieu/darkflow.git#egg=darkflow && \
    rm -rf ~/.cache/pip
