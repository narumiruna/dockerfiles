FROM narumi/conda

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN conda install --yes --quiet \
    boost \
    gflags \
    glog \
    hdf5 \
    leveldb \
    lmdb \
    mkl-include \
    opencv \
    protobuf \
    python-lmdb \
    && conda clean -tipsy

ENV CAFFE_ROOT=/opt/caffe
WORKDIR $CAFFE_ROOT

ENV CLONE_TAG=1.0

RUN git clone -b ${CLONE_TAG} --depth 1 https://github.com/BVLC/caffe.git . \
    && mkdir build \
    && cd build \
    && cmake -DBLAS=mkl -DMKL_INCLUDE_DIR=/opt/conda/include -DCPU_ONLY=1 -Dpython_version=3 .. \
    && make -j$(nproc)

ENV PYCAFFE_ROOT $CAFFE_ROOT/python
ENV PYTHONPATH $PYCAFFE_ROOT:$PYTHONPATH
ENV PATH $CAFFE_ROOT/build/tools:$PYCAFFE_ROOT:$PATH
RUN echo '$CAFFE_ROOT/build/lib' >> /etc/ld.so.conf.d/caffe.conf \
    && ldconfig

WORKDIR /workspace
