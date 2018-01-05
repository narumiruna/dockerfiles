FROM nvidia/cuda:8.0-cudnn6-runtime
RUN apt-get update &&\
    apt-get install -y python3-pip \
                       vim \
                       ssh \
                       git \
                       wget \
                       unzip &&\
    rm -rf /var/lib/apt/lists/*

RUN pip3 install -U pip &&\
    pip3 install -U http://download.pytorch.org/whl/cu80/torch-0.3.0.post4-cp35-cp35m-linux_x86_64.whl &&\
    pip3 install -U torchvision \
                    jupyter \
                    matplotlib &&\
    rm -rf ~/.cache/pip
